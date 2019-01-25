irqreturn_t irq_handler(int irq, void *dev_id, struct pt_regs *regs)
{
	static int initialised = 0;
	static unsigned char scancode;
	static struct work_struct task;
	unsigned char status;

	return IRQ_HANDLED;
}

int init_module()
{
	free_irq(1, NULL);

	return request_irq(1,	/* The number of the keyboard IRQ on PCs */
			   irq_handler,	/* our handler */
			   SA_SHIRQ, "test_keyboard_irq_handler",
			   (void *)(irq_handler));
}