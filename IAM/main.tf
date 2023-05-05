resource "aws_iam_user" "iam_users" {
    count = length(var.iam_users)
    name = var.iam_users[count.index]   
    
}

resource "aws_iam_policy" "ec2_access" {
    description = "Provide full access to ec2"
    name = "Ec2_Full_Access"
    policy = file("policies/ec2_full_access.json")
}

resource "aws_iam_policy_attachment" "attach_iam_policy" {
  count = length(var.iam_users)
  policy_arn = aws_iam_policy.ec2_access.arn
  name = var.iam_users[count.index]
  user = var.iam_users[count.index]
  
}