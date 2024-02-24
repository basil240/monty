/**
 * mod - Computes the rest of the division of the second top element by the top element.
 * @stack: Double pointer to the beginning of the stack.
 * @line_number: The line number in the file where the mod opcode appears.
 */
void mod(stack_t **stack, unsigned int line_number)
{
    if (*stack == NULL || (*stack)->next == NULL)
    {
        fprintf(stderr, "L%u: can't mod, stack too short\n", line_number);
        exit(EXIT_FAILURE);
    }

    if ((*stack)->n == 0)
    {
        fprintf(stderr, "L%u: division by zero\n", line_number);
        exit(EXIT_FAILURE);
    }

    (*stack)->next->n %= (*stack)->n;  // Modulus operation
    pop(stack, line_number);  // Remove the top element
}