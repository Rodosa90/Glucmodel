from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from users.admin import UserChangeForm, UserCreationForm
from medico.models import Medico


# Register your models here.
class MedicoAdmin(BaseUserAdmin):
    def has_add_permission(self, request):
        return False

    # The forms to add and change user instances
    form = UserChangeForm
    add_form = UserCreationForm

    # The fields to be used in displaying the User model.
    # These override the definitions on the base UserAdmin
    # that reference specific fields on auth.User.
    list_display = ('email', 'is_active', 'is_staff')
    list_filter = ('email',)
    fieldsets = (
        (None,
         {'fields': ('username', 'first_name', 'last_name', 'email', 'password', 'board_number', 'medical_center')}),

    )
    # add_fieldsets is not a standard ModelAdmin attribute. UserAdmin
    # overrides get_fieldsets to use this attribute when creating a user.
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': (
                'username', 'first_name', 'last_name', 'email', 'password1', 'password2', 'board_number',
                'medical_center')}
         ),
    )
    search_fields = ('email',)
    ordering = ('email',)
    filter_horizontal = ()


admin.site.register(Medico)
