resource "aws_s3_bucket" "terrayaaashs3" {
    bucket = "terrayaaashs3"

    tags = {
        Name = "terrayaaashs3"
    }
}

resource "aws_s3_bucket_versioning" "terra-versioning"{
    bucket = aws_s3_bucket.terrayaaashs3.id

    versioning_configuration {
        status = "Enabled"
    }
}
