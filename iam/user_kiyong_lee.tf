resource "aws_iam_user" "kiyong_lee" {
    name = "kiyong.lee"
}

resource "aws_iam_user_policy" "art_devops_black_gguip" {
  name  = "super-admin"
  user  = aws_iam_user.kiyong_lee.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "*"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}
