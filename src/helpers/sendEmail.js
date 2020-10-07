require('dotenv').config()
const nodemailer = require('nodemailer')
const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: process.env.EMAIL,
        pass: process.env.EMAIL_PASSWORD
    }
})

module.exports = {
    send:(data)=>{
        return new Promise((resolve, reject)=>{
            const mailOptions = {
                from: process.env.EMAIL,
                to: data.to,
                subject: data.subject,
                html: `<!DOCTYPE html>
                <html lang="en">
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>coba saja</title>
                    <style>
                    .container{
                        height: 100%;
                        width: 100%;
                        display: flex;
                        flex-direction: row;
                        justify-content: center;
                        font-family: Arial, Helvetica, sans-serif;
                    }
                    table {
                        margin-right: auto;
                        margin-left: auto;
                    }
                    .header{
                        padding: 20px;
                        background-color: #57CAD5;
                        color: white;
                    }
                    th {
                        font-size: 18px;
                    }
                    td{
                        border-bottom: 1px solid grey;
                    }
                    </style>
                </head>
                <body>
                    <div class="container">
                    <table id="table-checkout-total" border="0" cellspacing="0" cellpadding="10">
                        <tr>
                            <th class="header" colspan="2">UFOCAFE</th>
                        </tr>
                        <tr>
                            <th colspan="2">Halo ${data.order.name} <br>
                            Order is Success</th>
                        </tr>
                        <tr>
                            <td>No. Invoices</td>
                            <td>${data.order.invoices}</td>
                        </tr>
                        <tr>
                            <td>Orders</td>
                            <td>${data.order.orders}</td>
                        </tr>
                        <tr>
                        <tr>
                            <td>Total</td>
                            <td>Rp. ${String(data.order.amount).replace(/(.)(?=(\d{3})+$)/g, '$1.')}</td>
                        </tr>
                    </table>
                    </div>
                </body>
                </html>
                `
            }
            transporter.sendMail(mailOptions, (err, info) =>{
                if(err){
                    reject(err)
                    throw err;
                }else{
                    response.error = false
                    response.status = 200
                    response.message = "Successfully Send Email Nodemailer"
                    resolve(response)
                }
            })
        })
    }
}