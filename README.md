<h1>Ft_Printf</h1>

<p>This is a custom implementation of the C library function <code>printf</code> for the 42 programming curriculum. The <code>ft_printf</code> function is used to format and print text to the console.</p>

<h2>Usage</h2>

<p>To use <code>ft_printf</code>, simply call the function with a format string and any arguments you want to print. The format string can contain conversion specifiers, which are placeholders that tell <code>ft_printf</code> how to format the arguments.</p>

<p>For example:</p>

<pre><code>#include "ft_printf.h"

int main(void)
{
    ft_printf("Hello, %s!\n", "world");
    return 0;
}
</code></pre>

<p>This will print <code>Hello, world!</code> to the console.</p>

<h2>Available Conversion Specifiers</h2>

<p><code>ft_printf</code> supports the following conversion specifiers:</p>

<table>
  <thead>
    <tr>
      <th>Specifier</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>%c</code></td>
      <td>Print a single character</td>
    </tr>
    <tr>
      <td><code>%s</code></td>
      <td>Print a string</td>
    </tr>
    <tr>
      <td><code>%d</code></td>
      <td>Print a signed decimal integer</td>
    </tr>
    <tr>
      <td><code>%i</code></td>
      <td>Print a signed decimal integer</td>
    </tr>
    <tr>
      <td><code>%u</code></td>
      <td>Print an unsigned decimal integer</td>
    </tr>
    <tr>
      <td><code>%o</code></td>
      <td>Print an unsigned octal integer</td>
    </tr>
    <tr>
      <td><code>%x</code></td>
      <td>Print an unsigned hexadecimal integer (lowercase)</td>
    </tr>
    <tr>
      <td><code>%X</code></td>
      <td>Print an unsigned hexadecimal integer (uppercase)</td>
    </tr>
    <tr>
      <td><code>%p</code></td>
      <td>Print a pointer</td>
    </tr>
    <tr>
      <td><code>%%</code></td>
      <td>Print a literal % character</td>
    </tr>
  </tbody>
</table>

<h2>Printf() as a Variadic Function in C</h2>
<p>A variadic function is a function in C that accepts a variable number of arguments. This is achieved using the ellipsis (<code>...</code>) syntax in the function declaration. Printf() is a variadic function by nature because the function doesn't know at compile time how many arguments it will be given. Thus, we must use a variadic function prototype and #include the <code>stdarg.h</code> library when creating our own ft_printf() function. For example:</p>
<pre><code>int sum(int count, ...);</code></pre>
<p>The ellipsis syntax allows the function to accept any number of arguments after the fixed arguments. To access the variable arguments inside the function, we use the <code>stdarg.h</code> header and the functions defined within it. The most commonly used functions are:</p>
<ul>
  <li><code>va_start()</code> - initializes a <code>va_list</code> object to point to the first argument after the fixed arguments</li>
  <li><code>va_arg()</code> - retrieves the next argument of a specified type from the <code>va_list</code> object</li>
  <li><code>va_end()</code> - frees any resources associated with the <code>va_list</code> object</li>
</ul>
<p>Here's an example of a variadic function that accepts a variable number of integers and returns their sum:</p>
<pre><code>#include &lt;stdarg.h&gt;

int sum(int count, ...)
{
    int i;
    int sum;
    va_list args;
    va_start(args, count);
    sum = 0;
    i = -1;
    while(++i < 3)
    {
        sum += va_arg(args, int);
    }
    va_end(args);
    return sum;
}</code></pre>
<p>In this example, we first initialize a <code>va_list</code> object named <code>args</code> using <code>va_start()</code>. We then loop through the specified number of arguments and use <code>va_arg()</code> to retrieve each argument as an integer and add it to the <code>sum</code> variable. Finally, we free any resources associated with the <code>va_list</code> object using <code>va_end()</code>.</p>
<p>Variadic functions are commonly used in C libraries that need to accept a variable number of arguments. The <code>printf()</code> and <code>scanf()</code> functions, for example, are variadic functions that are used to format and print input and output.</p>
