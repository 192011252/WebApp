# Generated by Django 4.0.7 on 2023-09-08 14:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('content_creator', '0012_creator_table_upima1_creator_table_upima2'),
    ]

    operations = [
        migrations.AddField(
            model_name='creator_table',
            name='template',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
