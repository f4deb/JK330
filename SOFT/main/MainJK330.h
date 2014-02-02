// DEBUG UART

#define MAIN_BOARD_DEBUG_INPUT_BUFFER_LENGTH	28
#define MAIN_BOARD_DEBUG_OUTPUT_BUFFER_LENGTH	28

// PC UART

#define MAIN_BOARD_PC_INPUT_BUFFER_LENGTH		MAIN_BOARD_DEBUG_INPUT_BUFFER_LENGTH
#define MAIN_BOARD_PC_OUTPUT_BUFFER_LENGTH		MAIN_BOARD_DEBUG_OUTPUT_BUFFER_LENGTH

//struct OutputStream;
typedef struct OutputStream OutputStream;


struct OutputStream {
    /** The address of the stream (Ex : address for I2C, serialPortIndex ...). */
    unsigned char address;

};

void OpenUartDefaut (void);


void initOutputStream(OutputStream *outputStream);

