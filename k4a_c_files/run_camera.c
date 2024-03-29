#pragma comment(lib, "k4a.lib")
#include <k4a/k4a.h>


#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image.h"
#include "stb_image_write.h"


#include <stdio.h>
#include <stdlib.h>

#include <termios.h>
#include <unistd.h>
#include <fcntl.h>

int kbhit(void) {
    struct termios oldt, newt;
    int ch;
    int oldf;

    tcgetattr(STDIN_FILENO, &oldt);
    newt = oldt;
    newt.c_lflag &= ~(ICANON | ECHO);
    tcsetattr(STDIN_FILENO, TCSANOW, &newt);
    oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
    fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);

    ch = getchar();

    tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
    fcntl(STDIN_FILENO, F_SETFL, oldf);

    if(ch != EOF) {
        ungetc(ch, stdin);
        return 1;
    }

    return 0;
}


void print_camera_intrinsics(const k4a_calibration_t* calibration)
{
    k4a_calibration_intrinsic_parameters_t intrinsics = calibration->color_camera_calibration.intrinsics.parameters;

    printf("%.15e %.15e %.15e\n", intrinsics.param.fx, 0.0, intrinsics.param.cx);
    printf("%.15e %.15e %.15e\n", 0.0, intrinsics.param.fy, intrinsics.param.cy);
    printf("%.15e %.15e %.15e\n", 0.0, 0.0, 1.0);
}

// Function to print calibration information
void printCalibrationInfo(k4a_calibration_t *calibration) {
    printf("Depth Camera Calibration:\n");
    printf("  Depth Camera Resolution: %dx%d\n", calibration->depth_camera_calibration.resolution_width, calibration->depth_camera_calibration.resolution_height);
    printf("  Depth Camera Intrinsics:\n");
    printf("    FX: %f\n", calibration->depth_camera_calibration.intrinsics.parameters.param.fx);
    printf("    FY: %f\n", calibration->depth_camera_calibration.intrinsics.parameters.param.fy);
    // Add more calibration information as needed

    printf("\nColor Camera Calibration:\n");
    printf("  Color Camera Resolution: %dx%d\n", calibration->color_camera_calibration.resolution_width, calibration->color_camera_calibration.resolution_height);
    printf("  Color Camera Intrinsics:\n");
    printf("    FX: %f\n", calibration->color_camera_calibration.intrinsics.parameters.param.fx);
    printf("    FY: %f\n", calibration->color_camera_calibration.intrinsics.parameters.param.fy);
    // Add more calibration information as needed
}

// Function to transform depth image to color camera
void transformation_depth_image_to_color_camera(k4a_transformation_t transformation_handle,
                                                k4a_image_t depth_image,
                                                k4a_image_t color_image,
                                                int index) {

    k4a_image_t transformed_depth_image = NULL;
    
    k4a_result_t res = k4a_image_create(k4a_image_get_format(depth_image), 
                                        k4a_image_get_width_pixels(color_image),
                                        k4a_image_get_height_pixels(color_image),
                                        k4a_image_get_width_pixels(color_image) * (int)sizeof(uint16_t),
                                        &transformed_depth_image);

    if (K4A_RESULT_SUCCEEDED == res) {
        res = k4a_transformation_depth_image_to_color_camera(transformation_handle, depth_image, transformed_depth_image);
    }

    // Handle transformed_depth_image as needed...

    if (transformed_depth_image != NULL)
    {
        // Export the transformed color image or perform further processing if necessary
        uint8_t *buffer = k4a_image_get_buffer(transformed_depth_image);

        // Check if the buffer is not NULL before printing
        if (buffer != NULL)
        {
            int width = k4a_image_get_width_pixels(transformed_depth_image);
            int height = k4a_image_get_height_pixels(transformed_depth_image);
            int channels = 4; // Assuming BGRA format

            // Save the image to a PNG file
            // Save the depth image to a PNG file with the provided index
            char output_filename[256];
            snprintf(output_filename, sizeof(output_filename), "output_transformed_depth_%d.png", index);
            stbi_write_png(output_filename, width, height, channels, buffer, width * channels);

            // Alternatively, you can save to other formats like BMP
            // stbi_write_bmp("output_transformed_color.bmp", width, height, channels, buffer);

            printf("Transformed depth image exported successfully!\n");
        }
        else
        {
            printf("Buffer is NULL for transformed depth image\n");
        }

        printf(" | Transformed Depth Image res:%4dx%4d stride:%5d\n",
                k4a_image_get_height_pixels(transformed_depth_image),
                k4a_image_get_width_pixels(transformed_depth_image),
                k4a_image_get_stride_bytes(transformed_depth_image));

        // Release the transformed color image
        k4a_image_release(transformed_depth_image);
    }
    else
    {
        printf("Failed to create transformed depth image\n");
    }
}


void transformation_color_image_to_depth_camera(k4a_transformation_t transformation_handle, 
                                                k4a_image_t depth_image, 
                                                k4a_image_t color_image,
                                                int index)
{
    k4a_image_t transformed_color_image = NULL;

    k4a_result_t res = k4a_image_create(K4A_IMAGE_FORMAT_COLOR_BGRA32,
                                        k4a_image_get_width_pixels(depth_image),
                                        k4a_image_get_height_pixels(depth_image),
                                        k4a_image_get_width_pixels(depth_image) * (int)sizeof(uint32_t),
                                        &transformed_color_image);

    if (K4A_RESULT_SUCCEEDED == res)
    {
        res = k4a_transformation_color_image_to_depth_camera(transformation_handle, depth_image, color_image, transformed_color_image);
        // k4a_image_release(depth_image);
        // k4a_image_release(color_image);
    }

    // Handle transformed_color_image as needed...

    if (transformed_color_image != NULL)
    {
        // Export the transformed color image or perform further processing if necessary
        uint8_t *buffer = k4a_image_get_buffer(transformed_color_image);

        // Check if the buffer is not NULL before printing
        if (buffer != NULL)
        {
            int width = k4a_image_get_width_pixels(transformed_color_image);
            int height = k4a_image_get_height_pixels(transformed_color_image);
            // int height = 480;

            int channels = 4; // Assuming BGRA format

            // Save the image to a PNG file
            char output_filename[256];
            snprintf(output_filename, sizeof(output_filename), "YCBInEOAT/ours/rgb/output_transformed_color_%d.png", index);
            stbi_write_png(output_filename, width, height, channels, buffer, width * channels);

            // Alternatively, you can save to other formats like BMP
            // stbi_write_bmp("output_transformed_color.bmp", width, height, channels, buffer);

            printf("Transformed color image exported successfully!\n");
        }
        else
        {
            printf("Buffer is NULL for transformed color image\n");
        }

        printf(" | Transformed Color Image res:%4dx%4d stride:%5d\n",
                k4a_image_get_height_pixels(transformed_color_image),
                k4a_image_get_width_pixels(transformed_color_image),
                k4a_image_get_stride_bytes(transformed_color_image));

        // Release the transformed color image
        k4a_image_release(transformed_color_image);
    }
    else
    {
        printf("Failed to create transformed color image\n");
    }
}


int main()
{


    uint32_t count = k4a_device_get_installed_count();
    if (count == 0)
    {
        printf("No k4a devices attached!\n");
        return 1;
    }

    // Open the first plugged in Kinect device
    k4a_device_t device = NULL;
    if (K4A_FAILED(k4a_device_open(K4A_DEVICE_DEFAULT, &device)))
    {
        printf("Failed to open k4a device!\n");
        return 1;
    }

    // Get the size of the serial number
    size_t serial_size = 0;
    k4a_device_get_serialnum(device, NULL, &serial_size);

    // Allocate memory for the serial, then acquire it
    char *serial = (char*)(malloc(serial_size));
    k4a_device_get_serialnum(device, serial, &serial_size);
    printf("Opened device: %s\n", serial);
    free(serial);

    // Configure a stream of 4096x3072 BRGA color data at 15 frames per second
    k4a_device_configuration_t config = K4A_DEVICE_CONFIG_INIT_DISABLE_ALL;
    config.camera_fps       = K4A_FRAMES_PER_SECOND_15;
    config.color_format     = K4A_IMAGE_FORMAT_COLOR_BGRA32;
    config.color_resolution = K4A_COLOR_RESOLUTION_720P;
    config.depth_mode = K4A_DEPTH_MODE_NFOV_UNBINNED;
    config.synchronized_images_only = true;

    // Start the camera with the given configuration
    if (K4A_FAILED(k4a_device_start_cameras(device, &config)))
    {
        printf("Failed to start cameras!\n");
        k4a_device_close(device);
        return 1;
    }


    

    // Allocate memory for calibration handle
    k4a_calibration_t *calibration_handle = (k4a_calibration_t *)malloc(sizeof(k4a_calibration_t));

    // Get calibration data from the device
    k4a_result_t result = k4a_device_get_calibration(device, config.depth_mode, config.color_resolution, calibration_handle);

    // Print calibration information
    print_camera_intrinsics(calibration_handle);


    // Camera capture and application specific code would go here
    #define TIMEOUT_IN_MS 5000  // Replace with your desired timeout in milliseconds


    printf("Press 'q' to quit.\n");
    int index = 0;
    while (1) {
        // Capture a depth frame
        k4a_capture_t capture = NULL;
        switch (k4a_device_get_capture(device, &capture, TIMEOUT_IN_MS))
        {
        case K4A_WAIT_RESULT_SUCCEEDED:
            printf("Succeeded to take a capture\n");

            // Access the depth16 image
            k4a_image_t depth_image = k4a_capture_get_depth_image(capture);
            k4a_image_t color_image = k4a_capture_get_color_image(capture);


            // transformations code to transform the color image to fit the geometry of depth image
            

            // Check if calibration retrieval was successful
            if (result == K4A_RESULT_SUCCEEDED)
            {
                // Create a transformation handle using the obtained calibration data
                k4a_transformation_t transformation_handle = k4a_transformation_create(calibration_handle);

                // Check if the transformation handle was created successfully
                if (transformation_handle != NULL)
                {
                    // transformations code to transform the color image to fit the geometry of depth image
                    transformation_color_image_to_depth_camera(transformation_handle, depth_image, color_image, index);

                    // transformations code to transform the depth image to fit the geometry of color image
                    // transformation_depth_image_to_color_camera(transformation_handle, depth_image, color_image, index);


                    printf("transformed successfully");

                    // Release the transformation handle when it's no longer needed
                    k4a_transformation_destroy(transformation_handle);
                }
                else
                {
                    fprintf(stderr, "Failed to create transformation handle\n");
                    // Handle error appropriately
                }

                // Free the allocated memory for calibration handle
                free(calibration_handle);
            }
            else
            {
                fprintf(stderr, "Failed to get calibration data from the device\n");
                // Handle error appropriately
            }

            // transformation code end


            // export depth image
            if (depth_image != NULL)
            {
                uint8_t *buffer = k4a_image_get_buffer(depth_image);

                // Check if the buffer is not NULL before printing
                if (buffer != NULL)
                {
                    int width = k4a_image_get_width_pixels(depth_image);
                    int height = k4a_image_get_height_pixels(depth_image);
                    // int height = 480;
                    
                    int channels = 4; // Assuming BGRA format

                    // Save the image to a PNG file
                    // Save the depth image to a PNG file with the provided index
                    char output_filename[256];
                    snprintf(output_filename, sizeof(output_filename), "YCBInEOAT/ours/depth/output_depth_%d.png", index);
                    stbi_write_png(output_filename, width, height, channels, buffer, width * channels);

                    // Alternatively, you can save to other formats like BMP
                    // stbi_write_bmp("output.bmp", width, height, channels, buffer);

                    printf("Image exported successfully!\n");
                }
                else
                {
                    printf("Buffer is NULL\n");
                }

                printf(" | Depth16 res:%4dx%4d stride:%5d\n",
                        k4a_image_get_height_pixels(depth_image),
                        k4a_image_get_width_pixels(depth_image),
                        k4a_image_get_stride_bytes(depth_image));

                // Release the image
                k4a_image_release(depth_image);
            }


            // // export color image
            // if (color_image != NULL)
            // {

                
            //     uint8_t *buffer = k4a_image_get_buffer(color_image);

            //     // Check if the buffer is not NULL before printing
            //     if (buffer != NULL)
            //     {
            //         int width = k4a_image_get_width_pixels(color_image);
            //         int height = k4a_image_get_height_pixels(color_image);
            //         // int height = 480;
            //         int channels = 4; // Assuming BGRA format

            //         // Save the image to a PNG file
            //         // Save the color image to a PNG file with the provided index
            //         char output_filename[256];
            //         snprintf(output_filename, sizeof(output_filename), "YCBInEOAT/ours/color_original/output_color_%d.png", index);
            //         stbi_write_png(output_filename, width, height, channels, buffer, width * channels);

            //         // Alternatively, you can save to other formats like BMP
            //         // stbi_write_bmp("output.bmp", width, height, channels, buffer);

            //         printf("Image exported successfully!\n");
            //     }
            //     else
            //     {
            //         printf("Buffer is NULL\n");
            //     }

            //     printf(" | Color res:%4dx%4d stride:%5d\n",
            //             k4a_image_get_height_pixels(color_image),
            //             k4a_image_get_width_pixels(color_image),
            //             k4a_image_get_stride_bytes(color_image));

            //     // Release the image
            //     k4a_image_release(color_image);
            // }


            // Release the capture
            k4a_capture_release(capture);
            break;
        case K4A_WAIT_RESULT_TIMEOUT:
            printf("Timed out waiting for a capture\n");
            // continue;
            break;
        case K4A_WAIT_RESULT_FAILED:
            printf("Failed to read a capture\n");
            // goto Exit;
            break;
        }

        // Check if a key has been pressed to exit the loop
        if (kbhit()) {
            int ch = getchar();
            if (ch == 'q') {
                printf("Quitting...\n");
                break;
            }
        }

        // Increment the frame index
        index++;
    }

    printf("Stopping and closing the camera.\n");

    // Shut down the camera when finished with application logic
    k4a_device_stop_cameras(device);
    k4a_device_close(device);

    return 0;
}