/*
 * �����嵥������һ���������Ź��豸ʹ������
 * ���̵����� wdt_sample ��������ն�
 * ������ø�ʽ��wdt_sample wdt
 * ������ͣ�����ڶ���������Ҫʹ�õĿ��Ź��豸���ƣ�Ϊ����ʹ������Ĭ�ϵĿ��Ź��豸��
 * �����ܣ�����ͨ���豸���Ʋ��ҿ��Ź��豸����ʼ���豸��
 *           Ȼ�����ÿ����̻߳ص��������ڻص��������ι����
 */
#include <rtthread.h>
#include <rtdevice.h>
#define WDT_DEVICE_NAME    "wdt"    /* ���Ź��豸���� */
static rt_device_t wdg_dev;         /* ���Ź��豸��� */
static void idle_hook(void)
{
    /* �ڿ����̵߳Ļص�������ι�� */
    rt_device_control(wdg_dev, RT_DEVICE_CTRL_WDT_KEEPALIVE, NULL);
    rt_kprintf("feed the dog!\n ");
}
static int wdt_sample_v2(int argc, char *argv[])
{
    rt_err_t ret = RT_EOK;
    rt_uint32_t timeout = 1;        /* ���ʱ�䣬��λ���� */
    char device_name[RT_NAME_MAX];
    /* �ж������в����Ƿ�������豸���� */
    if (argc == 2)
    {
        rt_strncpy(device_name, argv[1], RT_NAME_MAX);
    }
    else
    {
        rt_strncpy(device_name, WDT_DEVICE_NAME, RT_NAME_MAX);
    }
    /* �����豸���Ʋ��ҿ��Ź��豸����ȡ�豸��� */
    wdg_dev = rt_device_find(device_name);
    if (!wdg_dev)
    {
        rt_kprintf("find %s failed!\n", device_name);
        return RT_ERROR;
    }
    /* �������Ź� */
    ret = rt_device_control(wdg_dev, RT_DEVICE_CTRL_WDT_START, RT_NULL);
    if (ret != RT_EOK)
    {
        rt_kprintf("start %s failed!\n", device_name);
        return -RT_ERROR;
    }
    /* ���ÿ����̻߳ص����� */
    rt_thread_idle_sethook(idle_hook);
    return ret;
}
/* ������ msh �����б��� */
MSH_CMD_EXPORT(wdt_sample_v2, wdt sample);
