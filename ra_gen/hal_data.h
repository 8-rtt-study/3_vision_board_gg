/* generated HAL header file - do not edit */
#ifndef HAL_DATA_H_
#define HAL_DATA_H_
#include <stdint.h>
#include "bsp_api.h"
#include "common_data.h"
#include "r_sci_b_i2c.h"
#include "r_i2c_master_api.h"
#include "r_wdt.h"
#include "r_wdt_api.h"
#include "r_sci_b_uart.h"
            #include "r_uart_api.h"
FSP_HEADER
extern const i2c_master_cfg_t g_sci3_cfg;
/* I2C on SCI Instance. */
extern const i2c_master_instance_t g_sci3;
// #ifndef sci_b_i2c_master_callback
// void sci_b_i2c_master_callback(i2c_master_callback_args_t * p_args);
// #endif

extern const sci_b_i2c_extended_cfg_t g_sci3_cfg_extend;
extern sci_b_i2c_instance_ctrl_t g_sci3_ctrl;
/** WDT on WDT Instance. */
extern const wdt_instance_t g_wdt0;

/** Access the WDT instance using these structures when calling API functions directly (::p_api is not used). */
extern wdt_instance_ctrl_t g_wdt0_ctrl;
extern const wdt_cfg_t g_wdt0_cfg;

#ifndef NULL
void NULL(wdt_callback_args_t * p_args);
#endif
/** UART on SCI Instance. */
            extern const uart_instance_t      g_uart9;

            /** Access the UART instance using these structures when calling API functions directly (::p_api is not used). */
            extern sci_b_uart_instance_ctrl_t     g_uart9_ctrl;
            extern const uart_cfg_t g_uart9_cfg;
            extern const sci_b_uart_extended_cfg_t g_uart9_cfg_extend;

            #ifndef user_uart9_callback
            void user_uart9_callback(uart_callback_args_t * p_args);
            #endif
void hal_entry(void);
void g_hal_init(void);
FSP_FOOTER
#endif /* HAL_DATA_H_ */
