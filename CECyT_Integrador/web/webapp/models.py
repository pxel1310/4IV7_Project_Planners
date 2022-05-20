from django.db import models


# Create your models here.

class Asignaturas(models.Model):
    id_asi = models.AutoField(primary_key=True)
    id_esp = models.ForeignKey('Especialidades', models.DO_NOTHING, db_column='id_esp')
    id_sem = models.ForeignKey('Semestres', models.DO_NOTHING, db_column='id_sem')
    nom_asi = models.CharField(max_length=45)

    class Meta:
        db_table = 'asignaturas'


class Especialidades(models.Model):
    id_esp = models.AutoField(primary_key=True)
    nom_esp = models.CharField(max_length=45)

    class Meta:
        db_table = 'especialidades'


class Grupos(models.Model):
    id_gru = models.AutoField(primary_key=True)
    nom_gru = models.CharField(max_length=45)

    class Meta:
        db_table = 'grupos'


class Material(models.Model):
    id_mat = models.AutoField(primary_key=True)
    id_asi = models.ForeignKey(Asignaturas, models.DO_NOTHING, db_column='id_asi')
    nom_mat = models.CharField(max_length=45)
    url_mat = models.CharField(max_length=64)

    class Meta:
        db_table = 'material'


class Privilegios(models.Model):
    id_pri = models.AutoField(primary_key=True)
    nom_pri = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'privilegios'


class Roles(models.Model):
    id_rol = models.AutoField(primary_key=True)
    nom_rol = models.CharField(max_length=28)

    class Meta:
        managed = False
        db_table = 'roles'


class Semestres(models.Model):
    id_sem = models.AutoField(primary_key=True)
    nom_sem = models.CharField(max_length=45)

    class Meta:
        db_table = 'semestres'


class Sexos(models.Model):
    id_sex = models.AutoField(primary_key=True)
    nom_sex = models.CharField(max_length=28)

    class Meta:
        managed = False
        db_table = 'sexos'


class Situaciones(models.Model):
    bol_usu = models.OneToOneField('Usuarios', models.DO_NOTHING, db_column='bol_usu', primary_key=True)
    id_gru = models.ForeignKey(Grupos, models.DO_NOTHING, db_column='id_gru', blank=True, null=True)
    id_tur = models.ForeignKey('Turnos', models.DO_NOTHING, db_column='id_tur', blank=True, null=True)
    id_esp = models.ForeignKey(Especialidades, models.DO_NOTHING, db_column='id_esp', blank=True, null=True)
    id_sem = models.ForeignKey(Semestres, models.DO_NOTHING, db_column='id_sem', blank=True, null=True)

    class Meta:
        db_table = 'situaciones'


class Turnos(models.Model):
    id_tur = models.AutoField(primary_key=True)
    nom_tur = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'turnos'


class Usuarios(models.Model):
    bol_usu = models.PositiveIntegerField(primary_key=True)
    nom_usu = models.CharField(max_length=25)
    apa_usu = models.CharField(max_length=25)
    usu_apmat = models.CharField(max_length=25)
    id_sex = models.ForeignKey(Sexos, models.DO_NOTHING, db_column='id_sex')
    fna_usu = models.DateField(blank=True, null=True)
    ema_usu = models.CharField(max_length=100)
    usu_contrasena = models.CharField(max_length=30)
    cre_usu = models.DateTimeField(blank=True, null=True)
    usu_active = models.PositiveIntegerField(blank=True, null=True)
    id_rol = models.ForeignKey(Roles, models.DO_NOTHING, db_column='id_rol')
    id_pri = models.ForeignKey(Privilegios, models.DO_NOTHING, db_column='id_pri')

    class Meta:
        db_table = 'usuarios'
