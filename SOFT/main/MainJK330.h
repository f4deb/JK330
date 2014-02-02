// DEBUG UART

#define MAIN_BOARD_DEBUG_INPUT_BUFFER_LENGTH	28
#define MAIN_BOARD_DEBUG_OUTPUT_BUFFER_LENGTH	28

// PC UART

#define MAIN_BOARD_PC_INPUT_BUFFER_LENGTH		MAIN_BOARD_DEBUG_INPUT_BUFFER_LENGTH
#define MAIN_BOARD_PC_OUTPUT_BUFFER_LENGTH		MAIN_BOARD_DEBUG_OUTPUT_BUFFER_LENGTH

//struct OutputStream;
typedef struct OutputStream OutputStream;

typedef void OpenOutputStreamFunction(OutputStream* outputStream, int param1);

struct OutputStream {
    /** The address of the stream (Ex : address for I2C, serialPortIndex ...). */
    OpenOutputStreamFunction* openOutputStream;

};

void OpenUartDefaut (void);




void initOutputStream(OutputStream *outputStream);

