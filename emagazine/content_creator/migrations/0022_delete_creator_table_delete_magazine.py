# Generated by Django 4.0.7 on 2023-11-23 09:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('content_creator', '0021_creator_table_magazine'),
    ]

    operations = [
        migrations.DeleteModel(
            name='creator_table',
        ),
        migrations.DeleteModel(
            name='Magazine',
        ),
    ]
