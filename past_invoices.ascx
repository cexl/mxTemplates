
        <tr class="past_invoices_content">

            <td>

                <%# DateTime.parse(Eval("pa_invoicedate").toString()).toString("MM/dd/yyy") %></%#>

            </td>

            <td>

                <a href='Myinvoices/InvoiceDetails?invoiceid=<%#Eval("invoiceid")%>' target='_blank'><%# Eval("invoicenumber").toString() %></a>

            </td>

            <td>

                <%# Eval("customerid").toString() %></%#>

            </td>
            <td>

                <%# Eval("totalamount").toString() %></%#>

            </td>
            <td>

                <%# Eval("pa_balancedue").toString() %></%#>

            </td>

        </tr>
    
