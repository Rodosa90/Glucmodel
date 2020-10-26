from django.contrib import admin
from django import forms
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.forms import ReadOnlyPasswordHashField
from investigador.models import Investigador
from users.admin import UserChangeForm, UserCreationForm


# Register your models here.


class InvestigadorAdmin(BaseUserAdmin):
    # The forms to add and change user instances
    def has_add_permission(self, request):
        return False

    form = UserChangeForm
    add_form = UserCreationForm

    # The fields to be used in displaying the User model.
    # These override the definitions on the base UserAdmin
    # that reference specific fields on auth.User.
    list_display = ('email', 'is_active', 'is_staff')
    list_filter = ('email',)
    fieldsets = (
        (None,
         {'fields': (
         'username', 'first_name', 'last_name', 'email', 'password', 'Investigator_type', 'investigation_center')}),

    )
    # add_fieldsets is not a standard ModelAdmin attribute. UserAdmin
    # overrides get_fieldsets to use this attribute when creating a user.
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': (
                'username', 'first_name', 'last_name', 'email', 'password1', 'password2', 'Investigator_type',
                'investigation_center')}
         ),
    )
    search_fields = ('email',)
    ordering = ('email',)
    filter_horizontal = ()


admin.site.register(Investigador)
