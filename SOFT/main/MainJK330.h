// DEBUG UART

#define MAIN_BOARD_DEBUG_INPUT_BUFFER_LENGTH	28
#define MAIN_BOARD_DEBUG_OUTPUT_BUFFER_LENGTH	28

// PC UART

#define MAIN_BOARD_PC_INPUT_BUFFER_LENGTH		MAIN_BOARD_DEBUG_INPUT_BUFFER_LENGTH
#define MAIN_BOARD_PC_OUTPUT_BUFFER_LENGTH		MAIN_BOARD_DEBUG_OUTPUT_BUFFER_LENGTH












void SendDataBuffer(int UARTx, const char *buffer);


//void initSerialOutputStream1(OutputStream* outputStream);

