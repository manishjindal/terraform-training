## Outputs

With organization managing their entire infrastructure in terraform, it is likely that you will see some sensitive information embedded in the code.
When working with a field that contains information likely to be considered sensitive, it is best to set the Sensitive property on its schema to true

<img src="./images/outputs.png" alt="Alt text" title="Statefile">
<br/>
<br/>


View the statefile content using `terraform show` command.
<img src="./images/terraform-show.png" alt="Alt text" title="Statefile">
<br/>
<br/>

View the terraform output using `terraform output` command
<img src="./images/terraform-output.png" alt="Alt text" title="Statefile">
<br/>
<br/>

In both the cases the output is sensitive but you can still see the output value using `terraform output --json`
<img src="./images/terraform-output-json.png" alt="Alt text" title="Statefile">
<br/>
<br/>