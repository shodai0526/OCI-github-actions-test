resource "oci_objectstorage_bucket" "create_bucket" {
    # required
    compartment_id = var.compartment_ocid
    name = "my_new_bucket"
    namespace = var.bucket_namespace

    # optional
    access_type = "ObjectRead"
}

output "new_bucket" {
    value = oci_objectstorage_bucket.create_bucket
}
