
#include "board.h"
#include "app.h"


 /* Variables*/

volatile uint32_t g_systickCounter;


 /* SysTick*/

void SysTick_Handler(void)
{
    if (g_systickCounter != 0U)
    {
        g_systickCounter--;
    }
}

void SysTick_DelayTicks(uint32_t n)
{
    g_systickCounter = n;
    while (g_systickCounter != 0U)
    {
    }
}


int main(void)
{
    /* Init LED GPIO ports  GPIO_PortInit(base, portNum)) */
    GPIO_PortInit(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT);
    GPIO_PortInit(BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PORT);
    GPIO_PortInit(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT);

    /* Board level init */
    BOARD_InitHardware();

    /* Initialize LED pins (set IOCON & direction). Start with LEDs OFF. */
    LED_RED_INIT(LOGIC_LED_OFF);
    LED_GREEN_INIT(LOGIC_LED_OFF);
    LED_BLUE_INIT(LOGIC_LED_OFF);

    /* Set systick reload value to generate 1ms interrupt */
    if (SysTick_Config(SystemCoreClock / 1000U))
    {
        while (1)
        {
        }
    }

    /*color state  */
    enum {COLOR_RED = 0, COLOR_GREEN, COLOR_BLUE} color = COLOR_RED;

    while (1)
    {
        /* Set exactly one color ON (active-low macros from board.h) */
        if (color == COLOR_RED)
        {
            LED_RED_ON();
            LED_GREEN_OFF();
            LED_BLUE_OFF();
        }
        else if (color == COLOR_GREEN)
        {
            LED_RED_OFF();
            LED_GREEN_ON();
            LED_BLUE_OFF();
        }
        else /* COLOR_BLUE */
        {
            LED_RED_OFF();
            LED_GREEN_OFF();
            LED_BLUE_ON();
        }

        /* Hold color for 1000 ms */
        SysTick_DelayTicks(1000U);

        /* advance to next color */
        color = (color + 1) % 3;
    }
}
