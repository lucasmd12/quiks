---
### InÃ­cio do arquivo: ./.env
```
SENTRY_DSN=https://a561c5c87b25dfea7864b2fb292a25c1@04509510833995776.ingest.us.sentry.io/4509510909820928
```
### Fim do arquivo: ./.env
---
### InÃ­cio do arquivo: ./REVITALIZACAO_LOG.md
```
# Log de RevitalizaÃ§Ã£o do Centro de Comando e Controle

## Objetivo
Transformar o aplicativo de comunidade VoIP em um Centro de Comando e Controle (C3) completo e funcional.

## Progresso das Fases

### âœ… Fase 1: Auditoria e DiagnÃ³stico
- [x] Estrutura do projeto mapeada
- [x] Modelos do backend analisados
- [x] Problema crÃ­tico do mapa identificado
- [x] DependÃªncias verificadas

### ğŸ”„ Fase 2: CorreÃ§Ã£o CrÃ­tica do Mapa e Estrutura de Comando
- [ ] CorreÃ§Ã£o da visualizaÃ§Ã£o dos marcadores de clÃ£
- [ ] ImplementaÃ§Ã£o do mural de regras no backend
- [ ] Interface de ediÃ§Ã£o de regras para lÃ­deres
- [ ] Blindagem da criaÃ§Ã£o de QRR

### â³ Fase 3: ComunicaÃ§Ã£o AvanÃ§ada e AutomaÃ§Ã£o
- [ ] Sistema de eventos via Socket.IO
- [ ] Aprimoramento do modelo de mensagens
- [ ] Interface de chat enriquecida

### â³ Fase 4: ExpansÃ£o da ImersÃ£o e Cultura do ClÃ£
- [ ] PersonalizaÃ§Ã£o visual do QG
- [ ] IntegraÃ§Ã£o do InstaClÃ£
- [ ] Postagens automÃ¡ticas de conquistas

### â³ Fase 5: OtimizaÃ§Ã£o Final e Entrega
- [ ] Testes de integraÃ§Ã£o
- [ ] Empacotamento final
- [ ] Entrega em ZIP

## Problemas Identificados e SoluÃ§Ãµes

### 1. Marcadores de ClÃ£ InvisÃ­veis no Mapa
**Problema:** Os cÃ­rculos dos clÃ£s nÃ£o aparecem ou sÃ£o muito pequenos
**Causa:** Valores de radius muito pequenos ou posicionamento incorreto
**SoluÃ§Ã£o:** Implementar raio mÃ­nimo dinÃ¢mico e melhorar a lÃ³gica de renderizaÃ§Ã£o

### 2. Falta de Mural de Regras
**Problema:** NÃ£o existe sistema para lÃ­deres comunicarem regras
**SoluÃ§Ã£o:** Adicionar campo rulesMarkdown ao modelo Clan e interface de ediÃ§Ã£o

### 3. Controle de Acesso QRR
**Problema:** Verificar se apenas lÃ­deres podem criar QRR
**SoluÃ§Ã£o:** Revisar middleware de autorizaÃ§Ã£o

## ModificaÃ§Ãµes Planejadas

### Backend (Node.js)
1. Adicionar campo `rulesMarkdown` ao modelo Clan
2. Criar rota PUT /api/clans/:clanId/rules
3. Implementar eventos Socket.IO para invalidaÃ§Ã£o de cache
4. Expandir modelo Message para threads e reaÃ§Ãµes

### Frontend (Flutter)
1. Corrigir renderizaÃ§Ã£o dos marcadores no mapa
2. Criar tela de ediÃ§Ã£o de regras
3. Implementar escuta de eventos Socket.IO
4. Melhorar interface de chat

---
**InÃ­cio da ExecuÃ§Ã£o:** $(date)



## FASE 4 - EXPANSÃƒO DA IMERSÃƒO E CULTURA DO CLÃƒ (EM ANDAMENTO)

### âœ… MELHORIAS NA ABA "EXPLORAR" (CONCLUÃDO)
- **Widget MapTransitionButton totalmente revitalizado:**
  - Design imersivo com gradientes e efeitos visuais
  - InformaÃ§Ãµes contextuais sobre clÃ£s e federaÃ§Ãµes
  - SeÃ§Ã£o "Seu TerritÃ³rio" para usuÃ¡rios em clÃ£s
  - Lista de federaÃ§Ãµes ativas
  - Lista de clÃ£s recentes
  - AÃ§Ãµes rÃ¡pidas (Buscar ClÃ£, Criar ClÃ£, EstatÃ­sticas)
  - Efeito de estrelas no fundo (StarsPainter)
  - Loading states e tratamento de erros

### ğŸ”„ CONSOLIDAÃ‡ÃƒO DE FUNÃ‡Ã•ES DUPLICADAS (INICIANDO)
- **Identificadas duplicaÃ§Ãµes em:**
  - `createClan`: 10 ocorrÃªncias em diferentes arquivos
  - `createFederation`: 8 ocorrÃªncias em diferentes arquivos
  - FunÃ§Ãµes de join/leave espalhadas em mÃºltiplos serviÃ§os

### ğŸ“‹ PRÃ“XIMAS AÃ‡Ã•ES
1. Consolidar funÃ§Ãµes de criaÃ§Ã£o de clÃ£ em um Ãºnico serviÃ§o
2. Consolidar funÃ§Ãµes de criaÃ§Ã£o de federaÃ§Ã£o em um Ãºnico serviÃ§o
3. Criar experiÃªncia imersiva para "espaÃ§o Ã­ntimo" do clÃ£
4. Implementar personalizaÃ§Ã£o visual do QG
5. Integrar InstaClÃ£ na experiÃªncia do clÃ£

---

**BACKUP CRIADO:** `kbprojetoflutterbackendemnodesjs_revitalizado_fase4.zip`
**DATA:** $(date)
**STATUS:** Fase 4 em andamento - ConsolidaÃ§Ã£o de duplicaÃ§Ãµes iniciada

```
### Fim do arquivo: ./REVITALIZACAO_LOG.md
---
### InÃ­cio do arquivo: ./analysis_report_post_phase8.txt
```
```
### Fim do arquivo: ./analysis_report_post_phase8.txt
---
### InÃ­cio do arquivo: ./android/app/build.gradle
```
// Modificado para build em debug - 30/05/2025
plugins {
    id "com.android.application"
    id "kotlin-android"
    id "dev.flutter.flutter-gradle-plugin"
    id 'com.google.gms.google-services' // Adicionado plugin Google Services
}

def localProperties = new Properties()
def localPropertiesFile = rootProject.file('../local.properties') // Adjusted path relative to app module
if (localPropertiesFile.exists()) {
    localPropertiesFile.withReader('UTF-8') { reader ->
        localProperties.load(reader)
    }
}

def getPubspecVersionInfo() {
    def pubspecFile = rootProject.file("../pubspec.yaml") // Path relative to app module
    if (!pubspecFile.exists()) {
        throw new GradleException("File not found: ${pubspecFile.absolutePath}")
    }
    def pubspecContent = pubspecFile.text
    def versionLine = pubspecContent.readLines().find { it.startsWith("version:") }
    if (versionLine == null) {
        throw new GradleException("Missing 'version:' line in pubspec.yaml")
    }
    def matcher = versionLine =~ /version:\s*(\d+\.\d+\.\d+)\+(\d+)/
    if (!matcher.find()) {
        matcher = versionLine =~ /version:\s*(\d+\.\d+\.\d+)/
        if (!matcher.find()) {
             throw new GradleException("Invalid 'version:' format in pubspec.yaml. Expected 'X.Y.Z+B' or 'X.Y.Z'. Found: ${versionLine}")
        }
        return [name: matcher.group(1), code: 1]
    }
    return [name: matcher.group(1), code: matcher.group(2).toInteger()]
}

def versionInfo = getPubspecVersionInfo()

android {
    namespace "com.lucasbeats.federacao"
    compileSdk 35
    ndkVersion "25.1.8937393"

    compileOptions {
        sourceCompatibility JavaVersion.VERSION_17
        targetCompatibility JavaVersion.VERSION_17
        coreLibraryDesugaringEnabled true
    }

    // âœ…âœ…âœ… CORREÃ‡ÃƒO ADICIONADA AQUI âœ…âœ…âœ…
    // Pede mais memÃ³ria para o processo de compilaÃ§Ã£o para evitar o erro "Java heap space".
    dexOptions {
        javaMaxHeapSize "8g"
    }

    kotlinOptions {
        jvmTarget = '17'
    }

    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
    }

    defaultConfig {
        applicationId "com.lucasbeats.federacao"
        minSdkVersion 24
        targetSdkVersion 35
        versionCode versionInfo.code
        versionName versionInfo.name
        multiDexEnabled true

        // ğŸ‘‡ CORTA x86 e x86_64 pra evitar erro no Sentry e no Jetifier
        ndk {
            abiFilters "armeabi-v7a", "arm64-v8a"
        }
    }

    buildTypes {
        release {
            signingConfig signingConfigs.debug // Usa debug como release
            minifyEnabled false
            shrinkResources false
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
        debug {
            minifyEnabled false
            shrinkResources false
        }
    }

    lintOptions {
        disable 'InvalidPackage'
        checkReleaseBuilds false
        abortOnError false
    }

    configurations {
        all {
            exclude group: 'io.github.webrtc-sdk', module: 'android'
        }
    }
}

flutter {
    source '../..'
}

dependencies {
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk8:2.1.0"
    coreLibraryDesugaring 'com.android.tools:desugar_jdk_libs:2.1.4'
    implementation 'androidx.multidex:multidex:2.0.1'
    implementation 'androidx.core:core-ktx:1.12.0'
    implementation 'androidx.appcompat:appcompat:1.6.1'
    testImplementation 'junit:junit:4.13.2'
    androidTestImplementation 'androidx.test:runner:1.6.1'
    androidTestImplementation 'androidx.test.ext:junit:1.2.1'
    androidTestImplementation 'androidx.test.espresso:espresso-core:3.6.1'
}
```
### Fim do arquivo: ./android/app/build.gradle
---
### InÃ­cio do arquivo: ./android/app/src/debug/AndroidManifest.xml
```
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- The INTERNET permission is required for development. Specifically,
         the Flutter tool needs it to communicate with the running application
         to allow setting breakpoints, to provide hot reload, etc.
    -->
    <uses-permission android:name="android.permission.INTERNET"/>
</manifest>
```
### Fim do arquivo: ./android/app/src/debug/AndroidManifest.xml
---
### InÃ­cio do arquivo: ./android/app/src/main/AndroidManifest.xml
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools">
    <!-- PermissÃµes bÃ¡sicas -->
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>

    <!-- PermissÃµes para VoIP -->
    <uses-permission android:name="android.permission.RECORD_AUDIO" />
    <uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
    <!-- <uses-permission android:name="android.permission.BLUETOOTH" /> REMOVIDO -->
    <!-- <uses-permission android:name="android.permission.BLUETOOTH_CONNECT" /> REMOVIDO -->
    <uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
    <!-- Adicionar permissÃ£o de armazenamento se necessÃ¡rio para fotos/logs -->
    <!-- <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" /> -->
    <!-- <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> -->

    <application
        android:label="lucasbeatsfederacao"
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher"
        android:allowBackup="true"
        android:fullBackupContent="true"
        tools:replace="android:label">
        <activity
            android:name=".MainActivity" 
            android:exported="true"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <!-- Specifies an Android theme to apply to this Activity as soon as
                 the Android process has started. This theme is visible to the user
                 while the Flutter UI initializes. After that, this theme continues
                 to determine the Window background behind the Flutter UI. -->
            <meta-data
              android:name="io.flutter.embedding.android.NormalTheme"
              android:resource="@style/NormalTheme"
              />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>

        <!-- Don't delete the meta-data below.
             This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
    </application>

    <!-- Required to query activities that can process text, see:
         https://developer.android.com/training/package-visibility?hl=en and
         https://developer.android.com/reference/android/content/Intent#ACTION_PROCESS_TEXT.
         In particular, this is used by the Flutter engine in io.flutter.plugin.text.ProcessTextPlugin. -->
    <queries>
        <intent>
            <action android:name="android.intent.action.PROCESS_TEXT"/>
            <data android:mimeType="text/plain"/>
        </intent>
    </queries>
</manifest>
```
### Fim do arquivo: ./android/app/src/main/AndroidManifest.xml
---
### InÃ­cio do arquivo: ./android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java
```
package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import io.flutter.Log;

import io.flutter.embedding.engine.FlutterEngine;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  private static final String TAG = "GeneratedPluginRegistrant";
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    try {
      flutterEngine.getPlugins().add(new com.ryanheise.audio_session.AudioSessionPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin audio_session, com.ryanheise.audio_session.AudioSessionPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new xyz.luan.audioplayers.AudioplayersPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin audioplayers_android, xyz.luan.audioplayers.AudioplayersPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new dev.fluttercommunity.plus.connectivity.ConnectivityPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin connectivity_plus, dev.fluttercommunity.plus.connectivity.ConnectivityPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.mr.flutter.plugin.filepicker.FilePickerPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin file_picker, com.mr.flutter.plugin.filepicker.FilePickerPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.firebase.appcheck.FlutterFirebaseAppCheckPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin firebase_app_check, io.flutter.plugins.firebase.appcheck.FlutterFirebaseAppCheckPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.firebase.auth.FlutterFirebaseAuthPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin firebase_auth, io.flutter.plugins.firebase.auth.FlutterFirebaseAuthPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.firebase.core.FlutterFirebaseCorePlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin firebase_core, io.flutter.plugins.firebase.core.FlutterFirebaseCorePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.firebase.crashlytics.FlutterFirebaseCrashlyticsPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin firebase_crashlytics, io.flutter.plugins.firebase.crashlytics.FlutterFirebaseCrashlyticsPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.firebase.database.FirebaseDatabasePlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin firebase_database, io.flutter.plugins.firebase.database.FirebaseDatabasePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin firebase_messaging, io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin flutter_local_notifications, com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin flutter_plugin_android_lifecycle, io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.it_nomads.fluttersecurestorage.FlutterSecureStoragePlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin flutter_secure_storage, com.it_nomads.fluttersecurestorage.FlutterSecureStoragePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new xyz.canardoux.fluttersound.FlutterSound());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin flutter_sound, xyz.canardoux.fluttersound.FlutterSound", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.cloudwebrtc.webrtc.FlutterWebRTCPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin flutter_webrtc, com.cloudwebrtc.webrtc.FlutterWebRTCPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.imagepicker.ImagePickerPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin image_picker_android, io.flutter.plugins.imagepicker.ImagePickerPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new org.jitsi.jitsi_meet_flutter_sdk.JitsiMeetPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin jitsi_meet_flutter_sdk, org.jitsi.jitsi_meet_flutter_sdk.JitsiMeetPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.github.dart_lang.jni.JniPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin jni, com.github.dart_lang.jni.JniPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.ryanheise.just_audio.JustAudioPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin just_audio, com.ryanheise.just_audio.JustAudioPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin package_info_plus, dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.pathprovider.PathProviderPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin path_provider_android, io.flutter.plugins.pathprovider.PathProviderPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.baseflow.permissionhandler.PermissionHandlerPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin permission_handler_android, com.baseflow.permissionhandler.PermissionHandlerPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.sentry.flutter.SentryFlutterPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin sentry_flutter, io.sentry.flutter.SentryFlutterPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin shared_preferences_android, io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new com.tekartik.sqflite.SqflitePlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin sqflite_android, com.tekartik.sqflite.SqflitePlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.urllauncher.UrlLauncherPlugin());
    } catch (Exception e) {
      Log.e(TAG, "Error registering plugin url_launcher_android, io.flutter.plugins.urllauncher.UrlLauncherPlugin", e);
    }
  }
}
```
### Fim do arquivo: ./android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java
---
### InÃ­cio do arquivo: ./android/app/src/main/kotlin/com/federacaomad/cla/MainActivity.kt
```
package com.federacaomad.cla

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity()
```
### Fim do arquivo: ./android/app/src/main/kotlin/com/federacaomad/cla/MainActivity.kt
---
### InÃ­cio do arquivo: ./android/app/src/main/kotlin/com/lucasbeats/federacao/MainActivity.kt
```
package com.lucasbeats.federacao

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
}

```
### Fim do arquivo: ./android/app/src/main/kotlin/com/lucasbeats/federacao/MainActivity.kt
---
### InÃ­cio do arquivo: ./android/app/src/profile/AndroidManifest.xml
```
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- The INTERNET permission is required for development. Specifically,
         the Flutter tool needs it to communicate with the running application
         to allow setting breakpoints, to provide hot reload, etc.
    -->
    <uses-permission android:name="android.permission.INTERNET"/>
</manifest>
```
### Fim do arquivo: ./android/app/src/profile/AndroidManifest.xml
---
### InÃ­cio do arquivo: ./android/build.gradle
```
buildscript {
    ext.kotlin_version = '2.1.0' // VersÃ£o Kotlin atualizada para 2.1.0 conforme erro de build
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:8.3.0' // Atualizado para 8.3.0 conforme recomendaÃ§Ã£o
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
        classpath 'com.google.gms:google-services:4.4.2' // Adicionado classpath do Google Services

    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.buildDir = '../build'
subprojects {
    project.buildDir = "${rootProject.buildDir}/${project.name}"
}

// Bloco problemÃ¡tico removido para evitar o erro "It is too late to set compileSdk"
// O compileSdk deve ser definido apenas no android/app/build.gradle

tasks.register("clean", Delete) {
    delete rootProject.buildDir
}
```
### Fim do arquivo: ./android/build.gradle
---
### InÃ­cio do arquivo: ./android/gradle.properties
```
org.gradle.jvmargs=-Xmx8g
android.useAndroidX=true
android.enableJetifier=true

```
### Fim do arquivo: ./android/gradle.properties
---
### InÃ­cio do arquivo: ./android/gradle/wrapper/gradle-wrapper.jar
```
PK
   *²•G           	   META-INF/ PK
   *²•G×•˜R?   U      META-INF/MANIFEST.MFóMÌËLK-.ÑK-*ÎÌÏ³R0Ô3àåòÌ-ÈIÍMÍ+I,
ê†d–ä¤Z)¸%¦ä¤bÈÂµéõòr PK
   ²•G              org/ PK
   ²•G              org/gradle/ PK
   ²•G              org/gradle/wrapper/ PK
   ²•Gh‚df£   Õ   #   org/gradle/wrapper/Download$1.class}ŒM
Â0…ßh5Z+v/‚×†Áp!.<AlCl	IIª½›à¡Äqë<æ=Ì|¯÷ã	 CÂÀbB|¶7—Ë}©%aºµ­ÑVëJÜa¶3¹¶¾4ê(›«-&„…uŠ+'
-yëD]KÇ«Œ Br0FºŞKOH;×Â(~ºT2oó?t=|§„Ğ"BF‡Ãu-} PK
   ²•GÅŞ…Ö  p  D   org/gradle/wrapper/Download$SystemPropertiesProxyAuthenticator.class¥SmoA~(‡ÇÑâ©`­•ÚÖzTåŠoÑ`	‰	1MªML?mag®wdo‘ò¯ô‹m4ñø£Œ³@• ïÃÎì<óÌ<;»÷ãç×ï Êxj"‚	k)Ü6±6SXÖî[¸k"ÇÀ¶{É^à©]†¸S<dHÔÂ¦`Xª{xÓ=9ò-?ö)b×Ã÷¹ôô~L¨¶1¬ô#%NöeØRy""ï´_íª¶”×à*”Öë ²æó(ÄyYeËmIŞô…Û“¼CTw/ì~È››óV–[BíS¹^(›c˜N±şän ”;=©bà>H¾3SK¹¢;İa(ÌId0Â®lˆWOæ*i)2X¤sd1,¶•ê”:úÈï"!<°P‚Kwğ¸àjdÇ@ÙÂC<ÒxÂ°ûÃeÈıV9¬Îœ Cv@ôyĞr‡}Òú†İú[N},EI/hUŠ‡MIüGjv2F"TXksY•’“ˆ„S<ª1ä§´8ªéë^™qL¬Ñ_fAqÄô­Ò#Z¢K–^¶ÏûLNYZ“ƒ ÇeZ­al\#›@ù¹JQå¿!şŞNœcÁNÚÆ9R_péæ§‰rb¬\~XÀnŒÊ='iaÓµä†	#-Ú[ÁÍmuWÉÚä¥QÄ˜¸NÙÔ/PK
   ²•GçìXsª   Û   "   org/gradle/wrapper/IDownload.classEÁ
Â0†ÿÌéæ¼
^õbñ¼«
APô^·26J;êt>›À‡;•É—üùó|İ è{èz~¢+%5O“é&çWÎ”(Ùa…_Ê4[gR„³#!XİbQ”™Vg=Ë{}1±¨÷„A´üYÍëCÂX›”¥†'R°Êğ¢†5Âğc/¹JÙö”‹¸$Œş£æS‡@pP¹„\ËmKuíØôlïÀPK
   ²•G©zİ\  Q  -   org/gradle/wrapper/GradleUserHomeLookup.classS[OAşF‘]ÖõR¬(µ¶j[[ÙZíUÓÄËª‰T 	Od…	®.»dYlüW½$jjÒÇ>ôG5=ÃR+Èƒ»É¹Íw¾sæÌÌï??~XÂª‚QÌÉx¢à)Iˆ)`^F\ø‰F° á¹‚ ½zQFRhMÂK	K“[úöúA*_ÚÉ®o¥ôÒANÏ–vÓŸt†pêØ854Ë°«ZÎsM»ºÊ0İ+e²éŒÍK{z‘ahÓ±a{Ãjrâ¿…×÷>4¸fÚ¦÷‘¡?(06
%Œ¤L›ï7k‡ÜÍ‡}8eÃ*®)üv0à™†DÊq«ZÕ5*×>»F½Î]m§å4¸»ëÔxÊqNšuj}¸Úg'ü-š¶mZœ0òZÙjw¥äœ¦[æb!Ú‹3)’UD0A\>y²IˆäA$¼R±ŒõfMğî±¨xƒ÷f˜èûFÓ´*Üe]Ó«x‹wÔ¯–ô«xówuğ¿Húğ˜—½Pî¬áñÃ`•{×!ïŒ!¿}%½nÉx/ qè¸}J†hÍ®0,Ş‰²= q@ã‡îÇ{ÔÆ,İúQzıˆŠi’ÅiÂ“İGã7ü !™8C’“ÑH3Ò`_[(É`+8$U€)<$Â4µ“OZdô4Ã}—è/îı‚z…@‘¨¾„ƒ—:CÂøY˜×…"D"VˆvIÎ †¹ëÂ(&ö%Óê¿®—)[|SW/ „©ş9Ôğ‰s‡,öÂnì%Br¦Uvö/PK
   ²•Gâ]ÛÅ  ú
  3   org/gradle/wrapper/ExclusiveFileAccessManager.class•VKpeÿmš&iºm!@!Pl …´P‚(Ó‚–ØbhZ ¥·É6]ºİ›MK} >êûuğè£2#-XÆGGÇƒ:ãñÂÅ//Äß·›–¾ùÿçïÿú6?şûÕ ã“ ¶¡³¤ÄÒåGw^÷ãD>tŠËIqê	 WìiA9%–¾ N£ß ÎQ#ˆ58Ä3x6HSÏqÏû¡0(3d…šD-†*‘ÃpÎWbº£~~˜Ö¤':Ïu$SíçzOut$û%„Rç•1%¦+F.Ök[š‘k‘P•0‚­vŸ¢U	¶6ªšE»« AJJ¨Î›º4lÕStAôµj†f–PM&ú$xf–Š5)ÍP»‹£ƒª•VuUø33ŠŞ§Xš¸—ˆ^{X£•XÊ´r±œ¥du56n)ù¼jÅÚ/dôbAS;4]mËdÔB¡K1”œj¨OqÚ¢nšr-î­hkz,c™¢e©†K(º.<¶4Ì‹úøày5cÓ˜Ÿ![v›Í“nfF$Ô¹’g†ÃPõ‚ãaŒˆL©óá13aˆĞ”ÍÔÿ 	áÏ5²ÆRŒ¬9êë’6ÏÙíYÄÀKÈæÜ,A›p/”­]˜ÿ‰ül\ak:İr˜úAÖCÍÛ„}Ñ«åÅ.ZÔïjMÇ—fõğ}ÕÅuÒÀUÂÚQebPMèfA=YÔT[Ÿ ø{Ö†[K¶›8LbÃ<sHi­"3+/aİ2FX¯Y´2¥2Ö¯Üu{…²Œ(ò2ÂN»°S‚<?J/À’°qñd)jzVµd`Ë(bŒí±WÏŒÈ„(.È˜À‹~¼$ãe¼"aÓJE—à±Æe\Ä«~\’ñ^—‘ÀS~¼!ãML²_îùî)b|ç²!¡2ísÄŠoqô"–ªd†Õld\Ñlb™Vd®¹#îœEl32D÷qª½íB~Çwe¼‡÷ıø@Æ‡Èûñ‘Œ‘g—)…„¦ûšqÃâ’P5¯Ê©ö	EôOij¢‹‡ÏO‘ne”ÌõÑ†å:Ÿğod‰*º”½T£T@1­¶é’$ìX¶Å::’Õ¬‚şÌ‚¨z'
¶:Ê†/Mƒ(N—¦ëš+Ì§(È0³#¾m6’U†|ëªÌ‹mM¤œçí­•¸y@ÓÃìæª¼ «*ëë‘ÕE“«eª†àÛ¦^´ÕŠ=Ì].×}³¨Wzè—¾¸”s¯÷æ•Ã`À–ª«JFÖ.™}ä<üXGøÊÆvì ßDŞ<"$&çvGBbë7pmäm€2eÜk§!5n¹
OcİU”]q”w;j^®Û¸nGWÓğR"®š°pNÂäœ„#Ï1ì£İxêø¡—É3ïÀî)”ÏÀ70?)T„‚\¦P9¹»‰Ü)T–â^)^~ÕÍ>)¾G/µ¾Æ/á™T>ıÍ3¨h
­™ÆÚ¸7ìB(^¦ê:GúîÏa*¯{¹P¥lò6\¾;#ì4Í v  ´‘…É)l
…y&¢Í³`¶ÜÜsuâa¢Üê$&Ç&áİs®ø"\^&x3^9O°ò&3ù9¦q‹™º…ß}~Âçş·³—9™¿ˆz®»˜÷(sØÀL7R²	˜ñƒ<¥ø7­ûùoê‘:‚ÇG3ßÄƒ¸„VLâ=µÑW_£ß ßâ(~ÀÓô×‰_háy·Éûƒ¼?Éû‹¼;äıC¨r´|ƒö³‚1C_’ÆJÎV§ô,9§fÊxˆø6'­Œ2¿!Æ¼¿Ó!”ã0•ä9ù'(ÿ$)^Rê‰Vôİ¶-¿¥=Ëİã´èw¨j¼$\†7u…d/«¨æ¶j-'Ií%½œ4Ûµß	¤–2ÕÜÛ¨Û¤G*1 é¸<öPK
   ²•GÌ^F‘  ù  -   org/gradle/wrapper/WrapperConfiguration.class“mOAÇÿÛçÖƒ>‚€¢¢"í!œ à3	U1UH|C®p–#åÜ]5ñSi"1ñ…Àeœ½[ ¬ÛÄ73³3óŸıí\ûûÏÏ_ æğ(‡K˜É`6‹Œîq?ÇÍ<7÷¹yÀÍB‹i<dĞöm?ğìV7°]‡a°qh~2Ç
Œ­Íõ§…ŞúŠé[¥¨§c:m£I5§-÷½3ƒ†¡ŞTóÀœ_XlvÒ_ìãh¢ŞÔ3Û±ƒ%†xµ¶ÍXu÷©oØõ¶{Ô²¼÷f«Şíî™mÓ³ùY$Áí3Ô®×6Ú¹ß±ŒÏy|lyÆNäW]ç£İîz&g!Ü|Û
Ö.¼¼P­ÉoÏûrS±z±‡³–¥QÑÓ*§ã.®©ì«š‡ªÿöªFG»’gDÙ©·gá#~ßRTN?GÎï=D•h¸¨ˆCÓíz{Ö›ï~TµàYşÑ^_n.¯5ê»[Íúæî«7uƒÈ3œ~!ş+ñ5×Pâ¦Ì†EŞ8õŸ_•®:_âFëĞÚ0ş‡ Rˆñ‰Åøí¡/_¾$|9ô`œŸì0v(ÏÈë?ÀôRìq½”8A2ŒSaœşÊ/“F’l	Šr”)`”¢1ŒPV‹QfŒ<Ã\—äy-©GæëÙ°”œ‹“gâq\â%êñn}ú™s”\˜ ÍÍpÂpÔ%&ğHßÊp7 qdR	2Aã q¤F½ÿ0üâ[J¤2£¹­IÊ s¤™ïR “J¬² ¹£ÉÊ Ió¤HQ€L)AR2Ès%HU’’A–I³Ò¤$@jJ´RW‚èj´²Nš×}@Êd:ÔÜıPK
   ²•GQ}iå  
  0   org/gradle/wrapper/SystemPropertiesHandler.classVësUÿm›dÃvË£PJJ…iúˆ€l
*ĞJ¥$P,‚ºMo“…d7l6´ŸøFıÂÃW>9ƒÃÀÎÈwÿ(õw7¡Í‹Úfzî½çuÏùsÏìßÿüù€ıøYÃ.Œ¨xCCF4œÄ¨Š75ø%ó”cò0.w*&UœVñ–†VŒqF®	IÎJrNƒ© ÎkxÓÒìBŞÁÅ\Â»’¼'/;'¥ïk00#IRÃ,„TkA
i¦ŠË
C¦eºG4Gº§øÛ³BÁ†1Ó…ìŒpÎ3rÚÆì¤‘™2SËLŸ›6ó
zÇl'K9ÆlFÄæ#—N,±˜wEö´cóàš"Ò°(vâ
6§„[+U°32vÙ¸fÄL;6bfD¼»t,¸f&6näh4­„ë#« T¥;jå
nID5…µ/ËG'‡’"çš¶EYó±(sñ¤ÃJÅhfZ)ŠÔ¬á&ÓÂYvîİìˆ”XàıHÆ`8©BVXnµ—É™Ë"éRŞd¾ `K…ƒQW8†kKÛõ¹åteÔdTg¬ ¥¬±È„ejĞr€m­¯ )3É.oµerº$ŠKóª‚.æu úÚ¡z°ê9Gép]ÂLY†[pècxõb®Ù§–°NR”àêzFKõKS»Aè7­ÜsÒÈ§y—Š+:2`Óli„—‚g´’ôhé°‘ÓqUúŞÜ §t®~¦`¹fVT;j³:V03³²Év;í„çÓÂ
glc–²ğJuÃsŒåˆyI\\“Í+Ø˜_†áb¤?Ú­bAÇ">ĞqªøHÇÇ¸¡âŸ‚Y|†ÏuÀ*¾ÔqSr¾Â×*¾Ññ-¾Óñ=~PqKÇøIAtí™Ôö¿½K³Üé.XœÚ®G&¯`ÛŠ¨ò5K2cç¥3Eİ¾H}³t×±ÊHÇkôË/u5ı k—Xl™H½"5¢"¨àœM;ö¼|L^üÏxƒ|¨I;›óğY%¥†7À9–®„´R,
[«rn–g}•zÅlj«ç2¾´‘Ÿtá³¼¥å¡w°2úãiÃIˆ«a%EƒVFi.ãO°oÎ”uö§»À9ØmX…µ<â’VÊM{7Jš’ùïıŸú/çQœ7€›Ùˆ
70_“C<Ïß.È¿&(r>‘îá)ÆUáê>„ò»'ŞKğ˜Û±T/) ‚n®ëEµh¬<€AòşXBÓôC4E‹ğıÏı%øÉŒ/A¦çàDo_ëø¯İƒ>è“›ïÉ=„'– O/¡•ÚëÛ6±‘.6ÑÖ÷›Ÿ´my„ö‰Ş"¶>F‡‚A_È÷ÛÜÁ	¹‘åïù‹è,bû` (¢ëö„¾"TCj;î¢½'¤öJ­T|Œp3Îßû÷QÏ}4‘}ègıxÑ[C8„A´P"A˜B;é¦¸Æ&ê‡ˆÜ.J÷ÒÏõziEœœóä\"ª×éñ&?¶nqÜİÆAÜÅK¸OÍ8ì:ùaÔNË>ŞGíbÜİF'-÷óÓë&= e€¾h=À¤q
/Ó‹O‚NO¯pâ7Şg‘BøC8Ââ\â÷ÖQ¼J¯•XÒz»c^‘swÂÛÿPK
   ²•G¥y0ºV        org/gradle/wrapper/Logger.class…“ûoÒPÇ¿—Ç*¯1ÆpL˜
EW†o1&†d		f&û­”›®Ki¡ÿŠ…ÅÄüü£Œç¶X³sï9Ÿó*şşúàO“Hàf—p+Û¨&Qƒ,D]ˆ;BÜ•p A‘Ğ`ˆ§wØ	ÃÚ3Ã2Üç±êIí˜^m{À²]Ãâ¯§Ã>wŞ©}“N6»¶¦šÇªc;8Œ¹§Æ„¡Ôµ]Ñu`rå££FÜQº¶®s§Å5m¡Pí©TÅT-]é¹aé-‘PòÉDÕ½+TŸ€Y†Æb|ûTuz|<å–Æ[µ…‹·(N$Ö&c†bXC3”Ùé„RãWuÄô:”Á+m§Úõf=m†dÏ:?2ÄØRşlDL¦‘BZB3{¸/áAQH£ˆGB<â	å	2ÃÆÿüoúg\£·Î+‰j®Š±/ø÷>M\>¤{JQ¿ÃVŞÒ
\ZW‡ÔHşœcÚŞHX¦Å \´ŸâáÅÓ_‰)ÎG½t…
}ı	Ğ éÙã¤FœôÖIfÉ:B„~@Rş	&—~ ò•¬6H®#Jò2bØ&J9Ïò¼‰–<MPiØB!`¾˜Yù;"Ÿ‘ü†h}†Ø2¸	eÒ¯.€³sp–N¶=p;øU Îùà”¿—¿,¡+„¾N!ûèÜÃJî£ËZ£.côÎûèŒ@—wgX[…W	^#HİƒË~ØàBÛ¥Ş"¶GZÔKx-¼—ÒÒj:…Ò5(¤ÒK…:½ÜğâöÿPK
   ²•GÎrëŠ  n  &   org/gradle/wrapper/PathAssembler.class•VùcWşÖÖy“8ŠsØµƒb',ÙIS(IğÕD­¯ú*NÚ¸kk#o*ïº»«Ä†r(÷}”ûZ)Ä´~ä¾Ù][¶*Óö½7ïiŞÌ73ß›·ÿşÏı7œÆ¿â8ŠÂœÅRnÄ)½ CQ†å(LÙ¶d±Å‹qÄQ[$'WæRQÜ”í[2¬F±ÇA|$ÊgñR‹âãq|ŸŒáSq|Ÿ‘ÅgEºÅçdş|Çğ²_ˆâ‹Q|)†/ÇÑ…¯ÄğUQşš_›ßé›1|KæoÇğ¾Ç÷ğ}Áq'†ÄğC9y'Š»
ŒX‹ZqÈp\ÛX(¹†e*Ps¦©ÛƒEÍqtGÁ‘K“ıC#Ãó3SÃ“ó—ÇG‡ç§¦'sc—$Fnh7µlQ3Ù)0çì´LÇÕLwV+–tû&&ÇŸœŞ:µ¯`kù¢>ãèöekY4|3†•}Â(ê4yÜ0÷¢‚ÆT÷¬‚Ğ •§ÚşÃÔÇJËº=­-uñ/àg5Ûu°r—¢î±ìBÖw•½ek++ºĞÜ¥~FµLM›¤vºoûº»3ó©z¶ñgF{İ(”lMtÏw¿­×oI¸älq»uÍÔu¨ ¶ 9ú˜&‰ŒåiÖ›lËb¶¿ŠÊ\ÒcEÁxê­Õ{qÖ©|´d/kÎ%æĞ—®ã¥îá½Ëºãh}È(è« ÃWrôÅ’m¸kÙÑíS?¼°æ
;®(Pã¡mV‡Wõ• ?ÇsÁÂÚú²uS^uuÓñÒ2½ì(Ì†’cÎ‚Êû9ë›º›™Ìí²¤sÆ.n‘xS›ÆWXvq`…¼ìwî*ûCRPœ²Jö¢.›dúõÉ	pQÅy<ÅTãÇ*Ã5sxZÅSãEŞnYÅOğŠŠ,òJ×¢(Å¼n«ø©èü?gF²*~!«ø¥Š_‰ôk¼¢àÌ»g¸ØøM¿U1§Yº“Nö$K×\E1¾pC_t£øŠßã¼ø£CFñGÂŸU¬ãUÁ_´xG–é.;`r¦«õk¢p¯â²‚ƒu˜  ­º;Y2]cYßögû U*æ“¦å&—HÜ¤a®”Ü¤O>±]aF(ÜÃßTÜÇ†Š¿KFî‹»æÚ©â¼Ir³Äf×—7ì(¨ø‡èşIn
3Î%I½¤á$Kæ¦u‹`’o—b§ŞáM%ºTw-5Ö´¸p-©º¯UğhWf^Aï;ºà¿¤]¹ÖTp!»jºoC³şbÃò1Cİ¾¼³Ç×ó°½Û«ÛS³ƒ’›(#×-›„Sğ:‘^©åpı>ñĞÿif~ãÉyæ"c<½{Fwí†1é2~C¥º¥%FJ+yÍ¥¹pêê€DÉŞ"©œ¿s(•«6]ïe¨îL/ÙÖ-yk½6ñ3àóúêøu1Y;óºÇ)-löáÃ©\}¿òjìÒ_,iE§ÆŞf‚¯ì¬ÓšãêË~'l‹p×v2‹ãüŞ:Êo»F´âıx¬*WÈp}nÛº—?vVÊ1î±Ñrü WpV8‡Ó(¯zªâçt Äï³~Jª¯„rC'¨)ºq1Î¼†ª•}„$iå8ö Ó³tØ×,‰$°Ä0mù6ÿKOQÎ·Ó™2+¦{*¥{3DÎ…6“¿bìÙ@|®‚&®Ô2ö&öqhq(cÍçÂ›ºvè&vèzROõPdçÒ­áÖH-ë[á´!Â1ÅPº±ia–ÑƒUfWB»ìƒŞ
í6.q\ÁKÈ±<uORjäY“OÚcLÍ õG˜‚0íìÅ(¥5ùÜÉ¸ÁBœ¥‰°±ŒCK	¿£s™©¹PïÔ=´®×”î4KvÆC•öOo¡:æ!P<Iğ5P3qUƒ¼gß»<''ûm÷ğĞ(“Ö>ÖÓ[FÇÍ…ˆå=$›O”q|}t]s‰¬ÑÉåã,vç¬õs@14“:,vË-øÎ2¾Ú1‰)hbf¦1C,]”gñŒMßú>|ØCß _ÒkÔ¢µd—qêBû]„3ë™Æö2RÕ¼$¼hbFhy”¹÷ü'ı³[ZpÅó¥ÆU<ëÑ›Ÿ!/›Úb§ùèíæœºØA‡=ë=¡çËHW=fd`TaF¤2¦fÆ“ şjUÚ¶¼¶aÏÓG‡ y\Qy}Ä¿T…ß8ÿ—yN22”IAÏÄÒ¯¡a=“èõVÍB÷Dß=d+xïº”%à|â4é®ŸÙäù#j>K¦>G¯×Xƒyœ ê…ÚB:„|Pİ;ïóXÇ‡•µ|Êÿ PK
   ²•G8Ş¶İ  ì)      org/gradle/wrapper/Install.classY|åµ?'»ÙÙ,Ã+ÂÊkD"y‡7IØğ0 êdw’Œì#îÎ’D­Z‹JÕ¾P[ÑV¬b-UQIĞ(Øj}¶ö¡µµµÕVkoëí½½÷öŞÛû*÷fv7›dâ/¿ıfæ{œçÿœï|_^ıûÓG‰h! >Î—Æ'"_š‚4iÆÉ§ 2¯ğñ›Ï(Àel’4“\ÈS¤™à" ;¸Xšé
4•gÈü™
Ïòóì ÏaMáÓtÏğ<OzJ¤9SáùšÃã\Êeªãrù¬¦Ršªq\Í5
/ğóB…ÉŒÅšÏK¤©Ÿ—És¹ˆ{–Œ b®õó
y®,àsxU€Ïåóx«Sxu€–ƒÆê¥i¦Q(¬
çûy­ô4)|ÂŸòs³Ÿ×IGK€ÎãõÒlğ…¼QáÖ ­åñ~Ş$ÏÍÒTxoUø"…ÛdÒ¶ ­çíjá‹Ş VáÛÂ—øùRù¸Lš*…õ µq»Â¡ mçv?‡ılø¹Cäí,à.6E«Ëı¼S&ªp,@°$šø8îæ+¤I(œĞNn”Æ’‰)…w)Ü n™ç^YĞ'Š^à«øjù¼ZŞ>->¹Zák˜‚kê67oº´¡©uÓÆ¦Õ›75­o¹tCİ¦µL…Í—ë»ôšˆë¬iµf¬sÓøúx,ié1k‹IAòk™|‘xg§‘`šÑOtÖt&ôpÄ¨éIèİİF¢¦ÙÄJ8Ş‹Äõ0Ól·‰MéqáÒ­[]uÉ¤må¹n6äÎÁ¢ÓŒŞP$•4wkÌˆQ
Éä:=¦Û²Õ¸Qh<áó­4c¦µŠé’ÒÑëã59¹Øe[˜¼õñ°Á4±ÙŒ-©h»‘Ø¤cP<é‘-zÂ”ït§×ê2“L3]9‹o"H%İ2Ì¤Åt¶«['Úav¦ºeÆc+Ê§›ñ±‰¸"”;ÎTvÊ¤ Qìf{J¾7'"Lò1ÃªÙ¼±	SŠr§´vé‹–.kME™&GDõ†œA…¯CwóÈn&µ)ïˆ£Â0KNjôy£ˆ@Ei0Y‡L Ú²l3»å¦lŒnY–Tø3ğC©¬#ÿÜÒáTÊÜ‚ÉÓeô2±‰_Ûa“Ï‹"Bf9Ó“F(•0­¾šu€&pÙ`vIKVvŠ²<šbİ)t=ŠQ†U|í©A~ŞöÕ¾ö>€A·t¦0u$`š>JªÕö*Ğ˜ÙiXu±ğ#avôåÚjc<H-¡ßhõF!©8×ÕF2”0»zÃfêLrV`<RÓlÚzN}İ™(ĞFÌ]9œÛ*Y»Ë‘=Œõ]FhgR|³´t´´'ÕqªD/À†zÈJéÛÓÉx*2lx3z»e„íÄTÓÜá«ªWO$æ!f¶´›7bÄ0g¢)h5;cº•J£]0’¦‹I¦'«± ²ÄŠŒDÔL&Èˆ¬‘Ô¶Ëd#èw°a„7zØI‘I+OYY Ú¬×ÄQİ²ì	ŞRèt·#=çuC".ÉvuÊŒ8”°¡Ñ”ÑdÄ†óõÙà[‘½¢)–‰T7ŒŸ;%à$‚µñ(èŒw>êãÑ¨C”©XO¬ËzÕLn5cØ¦ µ§´lŒ'[tYY6"†¤Ó„‹¥0QI¦ìíòâËê‚b	Ğ²İ5ğÃB(?»Ò„âs\c)×ùFÌJôe}aÛKk“eD’‘Í8"ësú…µÍÒ6dcP„®)Y³8‡rc,5²I\¹2“øŠGsOCtb(Şİ—“ƒ˜ªK]s“»TÖ`-&OD,Ğm‹Î[°`S³ë–ÙîÆœŠòzH³PšEC¬
+÷Í2ÃÊuûËÖ8B‹„ĞÊ±Ê­2´ŸœÖIsK†Ö¡U5ZÛ†/•ÅÂâ±æÕ¼ŞÅC\–	—cvwn´dH-³¶²¸ÕNçâÕô¼j™¦Òóô‚J¿¡wU:Lı*ıœ~¡Ò =£Òuô•®¡kUz„UéF¾ŒÇTpÊ¢Ïª´›nPézú¬Â»U¾oTù&Ş£ğçäãf•oá[Uş<ßŠíùÄJÍ¬Iè}Aå/ò— E®’èÖµuU¨Sş²Ê{ù6vî„œpzAáÛU¾ƒ¿¢òWùN•÷ñ]È.îeƒÂw«ü5şºÊ÷ğ~•ïåoHsŸÊ÷‹¨ü ıÁĞâ©˜eFlÂfºì|['-·VĞæ—$çká¸‘ÔbqKCAjéfLÓc}˜–À~—V­5¦7_ÍŠkHäšÑ‹}:Ò§-ÌÎë«F™1Ä}ûåèVù›|@öÊßâıL;N(Dšw,âZô“I òÃüm•î!˜è GåG`î²+-3d§]-Ş¡¹ÉĞ¡ÃAáÓKb%±6ÀÔuNTïÓºô]†Ön1ÍÒ£İ²gk=¦ÕU]³KôDT³ºt¡Íw-Àçkİ‰8Z},İ'¼°U¥ÁV‡ÚšÔ­š™„q¢#–%š€hé„ŒØìÒËµD<ªéš•H%Å^NU-Ši¹Å¦†²ªV+I–Ä2™Q“ŠP†œî¬ÅCéò®ÖvÈhuv6j@åG©|ˆWø	•ŸÇæ~ìÖC™³.‘Ğû$}ª<@?Sù?¥òÓò6ŸÑ›‚ä@»K¡ÀçlĞ'ªq†Á.S~ç‡º¢qÔ!åK—ªü,ï*GU>ÆÏ)ü]•¿'`,kiŠZ«aa™rNëªç´x¢V“è{^áTş>?”‰ÚQ…SĞe«vÆT~‘_©^–æ•aÊz*¿Ê{PSˆ?$–^ËL^°©ü™6ûãk6¦òúx*¶C=y±[oˆzRp¦É¹XbNGÄ™6{ô˜%Ñ˜ÂÁ_:b67!(ñduåÊ?ä×ş‘Ê?æŸ¨üS~c=N%¨ò›Ÿ¿Å?GêZş¨ô!ÿBá·Uş¥ ãWüNÆÒ£Ê4•óo;3G:cı°úmznJÎ?¼+nyO¥?ÑG
ÿVåßñõ*¿Ïw"·x[@ù›é‘GÍ·hìåŒgm÷åøå²”©¥MMòœŠW(qÊNRiÙÈ;‚é#&å³§–º¬µ“iÆtéXîD>ÑBá±íÃCV½¡b4€yÙË…İŸ¸ònµSVÎ½$óééãLëÙÄF6öÂP
?fÕÔC8‰Ğa×Îæ
g|Ì]ÎÌPßÖ/‚ş]Îæe'¹™â’¾ğ&·¯.k‚F©î°nIùƒ¦¾pZoi™\’L™ì{ÃqV|íĞ}IQi“+Ş|8±tZ]v/±³0g”ÖŸ½b©<±®nÓıV<#Ç„á>”2“ÑnGD_‡–ísÌ(êÛG»ÇUŸ"7Éä¦2i^	zà²QÆÈºÛg\œA%ÃNNÕÎaÚ‰şºöd<’²‰§á›d*øÑƒ-"÷
`¤:ÎNqé†9ºå+"WKF¯i{Øñ8¾ìÔW W3hûæ£lÔË83Ù)Ø ‚†3Ï8ù•XL‚Nõz,C)q”šVêr	`çK >a[2×Cw“GuÊÆ¤›¶^ûdsJğÉÜ±Oxr•#w\`e‡bNçd«áWŒÓİÏ÷¢Õ”¡¡ôM‘ôú%›íë •cBæ¨K%É—Ù;ÉÒ¥*Ó™§d’œ9$©[.©6·fÿç‘3°ÂÎÍñ$NC<rç¸òPPA½ë;NNMöõXÒq¿ë-Q°4×ÃoeŠ\R]zr]<a4FŒ(23 3.fôZéÏ‘f6f˜Ñ¹éòEw:·±Á!7º¬©ÉµÁ°‹¨áeª-©€#q1j~2»A§S•Q>éJºŠ˜®ÆW}š
åx÷B9kÛOœ’í'ÌxNÁÜé&´{ğu(xñœW>@åƒh+7™^ õ0/¯8LJyåaò•W¦	‡lŸC{ùĞÎÅJ¦ÒaÍ¦¼I7c¤Ü¡I·Ğ­Dö›ÈÄö›H•g¿‰\ô~¾€‘æHÁsUE?M\‡fRKù“4/“k½Ao?ÖæËcJ­ıãƒ¾AšÚVôó++ª¨¨Ÿ¦=GÅ³:–ƒr%d­¢TÉØr®u¸eå\E_¤/A¢|:›¾L{A%@Kè6Ø×ƒµåt;İ	Íf@Ï}tfÍ¥™t7Ş|ô5¬öbå×±çUGnB_ #7N?BÁuƒtZ[Å Íhñ,óNDÏøkó‹¼yûifU0¿Ÿf.óyï9ş—Ê`¾§JÎ:püƒÊ~š]-ç´V«x–ù‹üAßÑûhÁd:ôù_s„N¯-ôÓ\ï½4.¨LZĞOgl*Ò5oën?8şzPé§’!³¬¡Éh·Bì‹h"µÛàÂí4‡.¦ù´†º„Î"æÑù¦dĞeÔA&uÒhûĞw-Elv@ÁË°ú^©€. ¥ôºü¢tÖ¬7Ğı0"« !ÅDÚEß¤0k!%é!¬ğ‚F„¾EÃ¬«ÀõÛxóá¹ŠÒwà¦\?B¦óFj-å°k~KÕSt&Ã7Ói~[a©÷Y*kóT¶! »âF+‘Jö§‡«F{¢ê<JÈ“ +Ğ& s M>»¨zs€Ş’Õ´ÅÛoÁ"yX¹–Ñã ÷Ée§{DO®N‡©?­Ó³°€pm¬z‘êË+¨¦Ö[%¨_p- n-\¤Ø¢W´¶yÑ±¸µ-¿ªµÍôŠ*µùÓÁÓRïZ6³sm§\†×Ğ88b*"1ˆX<¢Ÿ‡l òo¶cÀ‡>• ~>f¨¼ÊV³1«f#=eçyüçÙoOÛq’«Ô ä(õ<%Öêi9°|–÷Ùûh1µ-UG—y=Ëò‹÷‘VU”¿¨ÖôõÓŠ}¤V}OÑÊ<Úº;H~·rÈ7³m‚·A­Ûá›;¨”¾‚°ş*¾ƒÎ…X™ /Úï·ƒt*UÀºG±~:p~ÌFİøô9¼å‹pYëÒ~ôƒšx//ë=§çIô|×6í÷ğ{^pÒ)¿.èÿˆ:gyRq[Eáª:w·Òym¾g©®ÍS¸®+¬‡ãà¿†ÖjtòÛä7¸îü»è$8eÖÂXM…ôÓ§ÄÑxôSs?­;@k©¥mÖ·Éütá m”LÑŠ›j1ßæ¶Zÿ‹TT
·8Pú[ûiëVäIµ iÛmxç¼^ÜØ•å2ß1’¹^‚—CĞ½ñürˆ<Ÿ@qÀv	£İëß‹İ‡Mç~{ÆbD}-â~5Ö´#Â{ç×!¾oALïGÄ<ˆ(xö~´Ãû°ôaüÇ Äw ¼ßãK|Ûpö ¿O/Âê×aûy‰^Ç=4‹^ıà– Wé5x¹–vÒè‡ğ²d•×éGè;l¿ıØ†ö‡YÏ¨Šç§ĞôSÚEèyÃ†v\f¥7ÎmøØŸVxéºìqÒû©½¹¢0ÔOá¼(ß{Ğs0z…6£ÀÏ1š´MjDƒi…4o•&Ğ[vXåÉ…yšÏƒR°¹¼Â‡j<ŒuU³*±	œ^nÃ«rÖ"àk€¼²`[òÜí‘XÁÔ…CB8ñÿ"ôX½Œ`x&{)ì5$ü—iÔ¡–€]	f½M¿„Ø’Ğ=Xs&ı
‘—gÍµœ~m›+OnûÓ»ŞEà$A°w:d¿ëtÕ%éÙ”ôlâår†!v:pì£bÑ¤R>¢Ğ¥Ÿb@éƒÄ»Û†Ğ”@ôJW2è Kà:@ãà§‚Ê±Ço¦»¤Óo¿ıÇA£t9`AøYö3€\x7ÁJ7Ø"ßÂèÛ4	z¡ù<èX	-Ï¡÷1ß¥ßƒÖ(Nÿ J@nı#h}„:ëAé#TÎ&¡yØjß£ßÂ¶;°Íş«%ÅïÍÚq/}Ş8ö‚ªÀnê£AÕö€Ã!{&·¶aüOààäÖ[Ğ')™ìEMÑRQ…Z¢m™÷nšPYeW=ÿ`èE§FqAûoPö¯(eşåÜß êe ¢YK Ö[Ä(ö¾½·Í±wl`RLÿdçÓ¬ˆ“üôÏ îˆØˆ9<•ò
lhş¡RÄgœa3Ôœ)ô/i†
ıkÚ&
D”Í4»·€ø_éßÓ!Rƒ§ÌÊ—ÄäNZu&8¤±ø? ëèÅ¾S[ü7ÈY\›N>»üp_í¹/«•ÏÑ
tş›şÇ÷àéü/ı_ÚÌ`I5~˜õ°ç+%§hñg)ùAÉÙÍı°³³›ûéïÃwsğ9ÎäêÎ<w6ïÎ»rÜ	¬0s›1Øö	ŒAy,<óØ‹:@ònİÁE¨p¬²çÑÿPK
   ²•GİÀL‰Ä  •	  -   org/gradle/wrapper/BootstrapMainStarter.classVY[ÛV=Â²ªÀl1p›ÅNSJ 4	…°’`–:¤‹°/FD–¨,è–.iûúÚ—¾6/†¯|Mßû/úÔÑv®dƒ7òÕw™™;sÎÌ½cıùÏo/¼eøqWF/f$¼/aVF+ædÜÃ¼Œ,òaI†1ËXáÃız<à’‡õX•—0$£kÖel`SÂõHp7ø°Å‡ÇõøPÆGøXÂ'õPùr[F’R|Sš¡ÙÓ<¡ğ† qÆL11Í`+¹Ì6³ÖÔm$ş˜™TõÕÒø¾ í]-+ 3­t4m©)EŸZêş>³¢wMÓÎÚ´YV5#n«–Í¬IŞ,_
èmÅöÔ5ª«F:·-ÍHOºÍŒÎi:›tğ¨Vš"´Ô0 »!çÍa¹\~X@ƒ«]T-BŸ4›Ú3ºšÍÆL5ÅHpOÌ®¯ÆJTüp†P;"Í%±ÍõËÌŞ5)‡%ÛÑYÒº:²l/OÜÑ~1y­•n§†¦¹çÙÃ$Û·5ÓÈJà¥ØÑŒTLÍÉ]f9dzByªd.îhNuTËê'[Uz¤Ôi´ãfÎJ²9çT Vá"Üƒ‚ ®)x·t\:J©FÁÒvhØ“ğDŒƒA˜ö|
KAt'zèEÜªEôãÈ=gÏ±(Èá€ĞóÔ­Šì)xŠCMçâûÛ{T		G
>ÃçEd…4Ğ…×µmâ_â+Ïğ5ñrÃÃF†yKÂ7
¾ÅwTìó «9ÃÖ2ì¬`fgÌœ
¦Ô©ì6Ú»,èR}ï¬5£(Ni”mm;Ç=²ƒÏñ=‡öƒ€Áÿù´èœ+AäµÍõU*tS(\zİ&Ë+µP°ŒUYÆÈ²­"×ÅZ·¦™?ÊÚ,Sş°Š*O8¯’ÙT‹Tïp±#]pŠ7‚’º®íZL¥gw)™³¸£â¾µ,¬+åà³Ì©ñü;C¯× ÓºğşBÕÍ§Š`Z±%Ü®qf«êLøUãÊE:jÚšq`>¡;|«4Œ{ßËÂDáj‘€¾Š6Rƒ¤“º\Ïa(\ÕK$"½¢ò\ş³&İT)£3Õ¦‡@Ûj¥öÜ1-2ª X#5E®é|×èÿÖşó@à-Æë´‹Ò,Ğì:†ğ‚uè£Ñç;ĞO£â` ¯ÓL!²â‡ÿ&;‰æÍ¡‘cÔ­œÂ“‡˜ğŒæáÍÃ?”Gı1&ÄÈ1×¢_ÉãÒ„7àõ_&ëÆ„§Mñ<š'|Ÿ@Â3Lû–ÍZ§Ç	 p´ïÂ0®bİôÍĞC ½ÌyJ&_…1ä@ß$û‚ìÃCŒÒŠûC„¸‹4÷á}•xÉWnâM²+vuo‘nœ$"IŞ&/ôOPÈİ1EôÑ¼tŠÖÄ°¿ííyt,¼œöŒ‹mb÷Ïèiorªy\ñòèü	¾€÷×ç¢ğË¿¢+á¿Z$|‚îcôüqVv

¤İ(¼AëqÊ=§:Maƒw‚Èxq™ê1‰):×Läß%­‡>€®ã=Z‰ŞYJ–œDğ‚ßvâÜùPK
   ²•GHÖ·$Ó
  #  (   org/gradle/wrapper/WrapperExecutor.class•Wy`UÿM²Én6Ó„n’¶)),%mÒÍEËİ–#ISÈÕlÒš¢ÖÉî4YØì„ÙÙ
((*¢"DE­·Aéˆ€¢Åïû>ñÂoğ÷ÍL6³Ûmì›÷½÷½ïø}Ç{ûäs?
`½òã-~ÜÀ[ƒ(Á~ÜD¡ànY¹Ç·p¯oâxg¸/ˆJôã]ATã`9ß-Ã{d8$Ã{åôûdx¿°| €Ê÷C²òa™}$€ùŞ/ÃGø˜|íÃ2Ë0+ßex(€‡å;'ÃÇıx$€GÅŠÇ„ıAœOŠËìS2ût Ÿøñ„ğ‘ûdöY?>ÄÙ8À“òı| _à‹|)€/ğ• ¾*ËOùñµ º„íëòı†OUâ›ø–Hù¶ß	¢ß%ßâûø˜öÃ ~„ñü4€Ÿ)¨ßÒîíéØ=:Ü·{hxp¨gxdLA¨ï2m¯Ö‘ÔRQËL¤&6)XÒm¤Ò––²vhÉŒ®`e€®ÎhGBşæPçÈ6ÏæŠ¼Íè¶ÎİÎ<kwt´_Áò]½C»£#ƒÃ=…=;â‚Ó¦1­›VBO+Xæ˜±É¡Ü:Í¯ZàÚšHÒş*‡3at-îÓÌ}ÌXÓ+'ÊF¡szZOÅµq›±<f¤ö$&¬ë3Ì‰	S‹'õ}¦F&³c§óí¶y2¦f%ŒÕì1Lt™³¶$L†y@ÁÅÍùVWy<==ûõX†Â¨Â×mÄéXu_"¥d¦ÆusDK<˜–Ü¡™	¡İEÍµ†!¡u®À¡œÊ7'R	ë|çµµécx°CBauíı1}ÚEÇgM&½ÆÅ9ºlÚÔ§5Sß’H3;Ç3"dÔL(8¡y£ ¥[£Ã½¬´‘1cñ^Ø	æHûñsÆßÔµ¸-Ò5“Ìá<z‹N¥1ÍÒã;5®‚€Mi–¥›9§l$¶Î/SAE|AXUÒĞâCDmZš‚[ ‘bêÚTNÏô¦˜£Îò&?~Á¨Oè–‚Á•¼,TĞÒüBRÖ¯Û»K›/=º%“Ô+-"™,º×eíÓ¦û5ñH3%qĞ§™D¤¦ˆ‘pD*h8BµãEä£F‹šÂŒpØ¶Sô¹’ğ¹‘`¼×6mÜºböªnŸ90 ‰”sŠœ[¬¤¸¾GË$çûí¹‹’´«¨¨€©_‘a×‰³
w)(Ûëˆ¬c¦ÕŸH§É·àl0j×ŒSÿµõ×.ò¬şÿ•J¼)® ¹€ß!Û\²}¡C«˜Ä/©ºXMÈŞ¯dH¨ø5~Ã:]px8“²Sz®°´º6…„‡÷Ğ˜pÓštS8nLVXßÏÒigÍ,È—îèÇoU<ß‰Âß³jY=*vãe*Æ°KÅ¥x±Š—à¥*àJ)*ş€?RYÜS¯]ZZWñ'<£âu¸IÅŸE]ÇfMªø‹püU6ë¼›ÑI—h43¥âoŒ›U<+lê•‰é(£¡;ş.»ÿÈÛpÿS6ş%5Ez4‘ì62É¸–ô²ğ¾"ÀšÆ”l»Àõo–øúü_<§âyÎÀ`·Šçµî¤üúù|q[´ŠŒ°./Ìç®L"—ÒögÌä0+YU¥„™İQ ˜SJ=ò.ïĞÍ´íÑ2ïjwRcìIˆ`_;¡Q•R<3F~oWğøqÓŠï‹%ç.°¢*r5¹F7µ†›
-\s-m
k©xşÎ‚µMíá‘I=­‡÷%’Éğ¸6õ)c/¦#ÕJê{8“vM“nÊk­}SôiÅçWÊ½r·
şË½õê¹bNÅ¯*¥Â¯U¥R
ğ0üŠª*K”*¿R­*'(Kta»¹Ğk2|¹~ÀQ›ÖcbnœÍœyìXƒ'z“ z€Pî÷¤aMîô¬zìwÔ|‹åESÚ,c¹]ìi›Ü•Wò+9œË½xÏõŞRN(Ş¾ëŠİT_.¼¨—6ç?M„«¦à:—âeCl.ªª&]Œ¹P„”ùÑ¼ÎêŠŞ\;áVú˜[AÚ•˜vÔÓ^ÂÙq„»;9ş562iûrOÆ
Š‰Æ&u©ã%róÑ—²œË$÷Ö[xÁ×åØ£N¾Åx€a,³âÊ¸jö‹TAÛ¢ns·ÑÈıió¹±ù¥ÄQoÂÚbÏc§y¥vOjf”¶ŠéyfåıYZòöKJ:3CÖ\ôhçU‘K¶•Ç~a1Œ12[ö£Û®ŒÅ>$
S±K´Ø‹Œv¥-;€EßŸîãşû­D=¶c˜T”T	Ö“ñĞ+HzèÒ;<ôÉ¤wzèSI¿ÈC¯EHnvÎCr¹Û_Şïö—×>¿U¨€†qˆ‘@9O+ç ŒÍ¡d,*…oec³(o™…Æ–çXÎ3@3tËœSØcë™haU`"';¿ÍÕÉ"pVÌ¡b,ô=‚Ê±ÒHôA¨³Xò˜èUW…R­ÒF:<jÛ\×dæ¨…¼¹µÊv(ãÊldU]MÑ'ÆÒHëa„"-‡Qi;ŒÚu'nki}u‘¸=‹eY,·§¡òÉ¢~+³8ÑYkpÖVÙk'9k';kabvJ«ÅSÅF›q³¶ÖYk²×š¡a£Ï†#âÀÑ"pÔûfÑòØıtcîÂ=Xç±K9n€ëÕ8µ8ƒQ?'á,®œƒÎ%µ½ØD86ÃÄy¸çSF'¥\€{q!²è¶<ƒĞÜ‹å¸—SABS6”³6¨Š=“*±go)ç|r”¨ÆyNö	XkQl{õvæ<€š,Ú¹ÒÁÊâ´™–…`†lm[©ı"¨´t5.ñ´Ñµ¢Œù=+h…IÊÇošûVN÷v{ØC¡õYl8‚¥s8Y»~gÌâÌZuVaQåv¦èˆ­RuD¸*½Š29EÏ2ÙåäJßÎf	KYlmâ	mv©ólêü<ê—ºCÑEİı­¡-eNöªè˜/´>šEÏNRµ­Yl}•`ç!TöÛîlÛ)µˆS´¯„–fr)±–…~	ÕÃõ³¸ã,o“c†å½—^\MoÅßıëg¢ìÅ>òïeuHğö\Jğjì·›ÈAùGà¢ñJb!á[5‡Ş1|qí½„¿¾CÈ·y[B£ªPGÆ:Æµ.„•SºAÕVQaˆÙTÇoáÃ6Ô«rE½ÊÎ?é%µx9®²]wÌºš?¾íÜş²_	eÀ©­şÂN•ñ„;àºªĞ™kÜóîù29_xø*Ïá²Üákq‹I’FK—	µ:Ú6úÚZê™öƒ÷dß5ÄòZ–ğu¹”r˜/»^Eô{v=#RbÏ^ƒ×òlfßHP|9 $şü7â:°Ù-Å@¤Eaï8¥Ğ‡ë=%Èiàv¬EÒM®¤­”TêHj-&éFO –$³7rVbË¼Ù•y©2»Q°XÙ6lôÕû ¼Ş7Óze­3«îDE„ù½mFYĞ·š²@»‚”XMY!¼™ÜÂ‹ñ6&ÌíÜ¿ÃƒccÎ–Æœ-®-2{O+)aØFëÖzCîõÔ`7â¡2·ùìêt¯§îö ÚÓİàêVh£ğßş?PK
   ²•G„¤«²
  B  *   org/gradle/wrapper/GradleWrapperMain.classXxÇşNÚÓjU8	¤Ã”ÔÎ€±ÀY  fm¼œéğéVÜíQâ–b§Ø‰ÓH±“8=Nâœ8'ÙŠMì'NwzïÍé½;ùgwu:İ-B_¾Íí¼yı½yïO>óğ£ Ö‹*¶á.ğ2¹¼\.¯PğJ\€W)8ãÇ«ıxÜ½VÅëp·÷øñzoPQ&±ÊğFyx¯Š7áÍ
Ş¢¢Ò¿UÅ¼Mò|»\Ş!—wª¸ïRğnïñã~	z¯ŠåxŸ‚÷«X…¨X†³
PQ#¹Ü‡*øª¨Å‡U¤1!¿&åò\öcÊ¨ğã¹TÁ9Åc*ÇÇT|ŸPñI<¡àS
>­b3Tñ|ÖÏIšÏûñ_”Ÿ_’‡OÉÃ/KFOùñÉè«~|MÁ×¥-wÉå~Ü.¿éÇ·T|ßQğ]?¾'‰¿¯âø¡\~¤âÇø‰ŠŸâg
~®¢¿¨Úy µ½«ãpoÇÃ»zº;÷ìëëìÙ+è:¦ŸĞÃ1=>îµÑøÈ’63´ô¸5 ÇR†@(¼½£¯µ³«£=Ã§ÂEÙßßÙÑ—.›Í#*ÜG­mëê|mæ0¥•uEãÆŞÔØ#Ñ§‰RI3¢ÇôDTî] Ï&Öv™‰‘ğHBá“	}|ÜH„wÚÛAg×­Gã4Ê7Æ_%u‡òM¶¥ë‰ò«ğ8P]Î»õ„@©ƒ5Ã;¢1ƒ§¥ã	“‡VÔHJˆ€’0M«=JÜÂq=‘4ø±:[ÏH,n3ÇÆôø°4vŸCFE3~‚Œ$Áe¹½§“–1¶/#*‹AÛ4y(æ¸eü<DÚr†³èˆ^ÌaK9ö¥¬h,<—v:¼ú©ì.sŒvÆÌ‘©ìE^Qè²IWæB:N‘”e¿Æp6–t{Ç©ˆ1mN…><œë•u³£1{'«:bWä ×çÆr‘«M¶Œòº<4A^Ë`Ü°Âı:{OÇ-ıTFaâøcL[ùIUºÒ3`$’6Få´Œœ«xÂApîUII3•ˆ­Iâú˜ÀâŒnññ”å€IªIEcÃŒˆ·2h6ûl-7Ô]8MòÌß>/¢¹rBíµÍpîË’¼Û,j¸×jÁ-nÆMá&V£]$¿ÄÓtU®;5ş•;¤M)b62)4ü
¿Vğ¿Åïˆs\ àx*jĞgÿ+¨á÷øƒ†?âO
ş¬á/ø+“jæBíÒ“£İú¸†¿áïşjHâ§ñlîTğ/ÿÆ–z¸¯SÖåXŒÎã°İ<™ú0k€srRÃóq›ôâ3³İ6M±O·F[“IcŒ5!ñşË….@­òU¬iI‹Ÿ^K·B,`ªe§Íu(›gÊ¢d»P>MˆBM(Œ¨ğS5Q„ÛXF®a¸5ÅÙ$BÅ’Nc¹˜OWD‰&JE™"Ê5±HQ¡‰J±XK4Q%ªé´9î+ı=“/Rq+:fd¥AE,ÕÄER_ßQš©‰eb¹À¶6=7­Ğ°AwŒ1B‘˜LÓ³¡£f"äªbçM˜c¡›Ü=i„j×$k›g¥iÏ‘cFÄÒÄ
±RJib•Û7¹)á\åY>Z-.fh÷š!%ä¢„¦«UHÅ‡)¥Ò«¤k¢F¬ÑÄZQ+°‰<ÜZŠÛÅ&”7"Ñ£Qc8Ÿ‡³"ê4QkY=Ê#×f¦H7ÛCÓ>qå5KcÑ¨‰u¢‰×QmX—à6E¬—÷ã:á¼ÅDRoí!3OöÇoˆóôL7šºúù4ŞBÓÕ÷rÏñ`=Óut²Ôã2/Õ“­‰‘Ô˜·.¤Z†¯œ	FGR	^¬5ye7ßÙò
ì©c¾ÖxYdvÑc+1¬ì®X=İ±òÅc®šG£ÈâÂÊ¸¥>g/‡¨”Õ*«^ .—Æ®¾ğ(Aeys;»S­v{N¶é­ÄËyÓ»›åO,³íÍézù±ğEå)„]7'c¯V1İ<OgU~[€bØVĞ!‡¼²ÆS„Ó<Ï¼º…-çâó»;Ë,s»ï.&PLEÌÌO†ùyeg´àmt2¡(³—-Ô°öêrdÔÆxL—£J"ÉƒÍuó
£×0W;?Rš_6m“íÄ±‘ÖYl¬í¦óšY=}“Œ]"jçâPìŠ¹1?È·—3’ñÙ–Çuæ”üªÏwÆ
GN]™©737;-·kËô¤àîY¨,“­8SNÈÕÙÎêM˜'{80›I§¶ŞÈ¨a¿HŒã)=F-Î&wë–úƒD`!ÓÇ+<‚qÈƒÆ+‹=hí;d'5ê„ë@Ş¨^ïEwñİçŒrÕuçRZñLA>Í‡ğùyÏV¾Âƒ#‰™²e4Ì£³‘Ûóòj;ƒÃ7İÿ<İÆ˜lõTıB¼3ríü0ù £ÃÜÿÒğpwÎzİv™æ©qÆ¡î`ı Va¶ğ!ˆrD¾š»(â~(k¯r0k_Âı¡¬}))„|Öp½0ä¸4L@<`£æZhWàz®šƒ Gø[„†‰Ebq†âŠ	{|º'±°›‹oï
†&PØâúÒPƒ¾‚GàZ(êòÔŞ4ŠÓĞfÀ%\*ÁƒS(#eyKA°@Ò.
úÒ´N¢¢E	*„N¡’(‹ÓX’FU'Õ-ş ¿iA¹YÚR´.X4‰‹ZÔ Ú0…eCÁ¢),çX1‰•MaÕPĞ?Õ¸x
5äµ&µ3–ïF€ë:z-m­¥ÃêQ…,G#.Å:ìB3öÓmWc=½³¡§°	·b3nG^‚­8ƒ+ñZmï;"ŞQ;|ò99Já!Dù%Cò –£XH9÷ãÄˆµÇ1†8½~=½n’K!9\Kh
eµq(…ŸÒ6ñÑ–"·3ÔëN2"§l9İüæ«Ît„¼ğ·–¾œBíPC nõ“ ƒ«\PchÆ!¥ThG:è’¶QKV¸‘JÀş:f¥Ê²+ğ27³ŠÉ®Ñùw6'¿:³ò«ØöÈâæ‹V¯ÊV8uük
4Âi\2õ¹ìº³ØUeØñõî²»—®“zï®À†46¦qi—¥±iÏ}(éšÂæ¡Æ	\q2Z[ÒØzª%0p¥ïlZØĞ;‰íxÖ9W™Ö	\uÖ–UNß\îj²‚2€^ÂíC%ú™:ƒL¢«yf¼WÉİŠç¾œIó\<p¿|-»º>Íğw€ºÚÒhßÓğJl}:%v0uwv5R“]Î4vw¯›ÆØ#1ÖíåQWÓÙy‡º‚¾s{ì³½¼è=çÈ}%¶ĞÁÒÉmö/°ÉßÍïİö¯cÏúü*¢æ%,UL¤•LÅ¦s#}¦—¯`Ô·0mw3a÷0Y¥”ĞHKo§í²Jµâx!á+	}“X³˜x±£$îpíŞg§.ıØ(Jcßİ¨t’•›ıi>ŸDïLäì´(!…¥Lÿ™Xa_ÉİÂ.÷Í.÷Ò)ô‘i	%L ?7nÌâRêr¼jë¥ÿPK
   ²•GÙÎx   ´  "   org/gradle/wrapper/Install$1.classWkwÕİ×YŠ<IQ‡0 +ØJ	$NB;€A1!NâÆM[ÆÒ 3QG#'¡ ¼Â#Ğ¥˜whKZ¬8¤v­®Õ~ìG~ edË²â&õZ>÷Ş3ç³ï9û>ôÏÿ|rÀFü}ºqXÄwD|WÄ÷D< Âˆ¡cdcˆ"Cc2xPzù(Æ¥µD3!âˆ[Äd£p¢pePÁ÷£ğÄºƒ’h¦ÚpÇÄà¸jÃğÃ6ü?ñpˆúÑ~‚Çbx\âŒâ‰(Œâ)éñ´Ì&F´ÏFğ\'#x^¡}Ê°;m7kØ£VáNË6Vd&Œ)#m¹i÷)´‰MÎ*ú–§pYmäYc%ßr=7É1ıô}ƒœ´JÌ²®ó •/y†Ø)te\/ŸÎ{FÎ6ÓG=£P0½ôHĞö×›r~¢1Ìğ¸Ñ»iópiR!³'Ÿ¦“ç„VÜ*vnPèheĞ)ú†m‹İ6Ë±ü
'—2\˜„f£ÚZ/zQ‹QwTĞúİ³¾2c9æPirÌôöcR‡xFÊrĞğ,W•š¬R
ú ã0‚m‹&5×,±˜Î\·Fg,T{²«±¾1²0WıPNŠÜbu*\2ûvzĞ7¹
×óIÃ;bzùrÇ4sÅ÷¨c»FNA™ï2æ”i“/DÖ^ç&Ã‚
Ïu}…ÕWx¼P[åº†)ÛBŞ!(vËšÉk1‚¶¶®J~ï›0³iÙ°•w¿äÑëÎÅuqÈÕlÉóLÇO÷3S¤YØa·äeÍ`ñz5¿=bÆîv²¶[da÷˜ş¸Ësà§:~†ulÁV°QG¯ˆ[p«MØ¬ã6Ü®£/ÑW}(/c·Â•„ÙU²ìœééø9^Ññ¼Êzõ¸GtLË¸¯éxoèxSÄ[¢{ï(„{
†çëø¥¨…_3Z­btºN<ı&‚wu¼‡S:ŞÇüVÇïğ{â:şˆÓ|¤ãOøsë˜?eìça0`Ú¦/NH&ÔõÓİÌFpVÇ'8Á_tüç™¹ÎCV¡ ¶$À:ß¥á§øLÇçøBÇßÄå€,ºc)“M5TX³d	r~Êi®¾p‚Íz¦á›äÂ–¦EÓ-¾ho…’²Ç—çM¯!°âD82&ÍFÚÎfâÛá~êN695©ª¼àÄ¨ï*…ë“ÍN­Æã§Í*ÔJWËÜjœ+‰sçXÑµK¾¹×ğÇ™#›5‹<g7ğ¤Í\ò	Údó¹jÍ	™Ìù %Hóì×‚4½R2n>_ÉÆ‚ìU·üRÙK\ĞSc»LêÍêqpr¯@Şvék²ï;`şˆææºk“WÑ‚Œ
®(IG¢íwy#7ğA*]ƒ}Ëÿ†İ0yñ¡¾b¡†±­ê¥Á“>ÙÕü2‰/Ör{ŒÅ!ó]hN¥©Á¼U`v_
L®ñ¦‹Ü¼İêu·åüÃF¯ÏCÛ$Ğî¿hõÌ¹˜Z°Yôıßo–zW·]råÄ!ó¨¨°É>CÒhmo—»`Û[myÃUZ^r•–÷\¥åEÈçtˆÿ}ØÆÙÛÙÛ‹DØŞ˜Z?•ºy-©î„R	mZ*A8•hAkê"Ñ²;([9Œ|¥^éßˆo¢ò8âMB+zoñ¦%Ô[ç=”ú-e,;‡Ø¡3hFzËã+(ÊXy†jCe¬šÆšõeÄ§±š
%ÊàÃe³¸üt03ş"Ú)h¡íÓ˜XÒÿsş‡ºËX=">gqeÕ0~?S¥•‘ UWß¿!ºî³è¡;p¶f¤†f×ñÓZ…­ZB;^ªÓØ.½k>Ctk¸!ÆuŒ‘s”jDx×œúï§U¿4è,ã‰ÆÿÖYVe¡››¨-£x2†ıVfW]ş¸À˜¿­Z%´6‹s¼~$¡®°Bª:ŠÕ”½H’C[È¢¹s˜½ÈœdÍIòæCVö<­ÿø7vá+ô«8Tßkq—ºƒj÷¨ãÈ¨“Ø£^Áz<¦ìã¯ ìİI¦†8s=îb/Œ/É™»1M¸RåQRMá~U8¬vá^bia¼a†¢çU¸_5z|»Ÿ~÷Q£Q3Ü¾“~÷\ä^Q†SeÜ|z	"‡« æÜP¨ØÄH¥ıU¾âÛL øs‘;•¿¯PK
   ²•Gj j´  V  8   org/gradle/wrapper/PathAssembler$LocalDistribution.class•R[KAşÎfİÕt«qµ¶Ú[´yˆkëÚâ[KA!´…|(L’!NºÙ“M‹ÿJÁPğ¡?ÀU<3†Ò¨|Ø™sû.sØË¿ ¼Å«9Ì`­OMôÌÏ}¼ôQ&øm5ÈTŸ0ßèŠŸ"VY¼¯ù~Üª+Mğòc5¨ì6™îÄ-Ú‰ŒiÑïKùñŞ` {ÍDjÆyTªò„½êôñIÑÉlóàÖ²¶$,4T*?{M©¿	ÂFÖÉ¡ĞÊäã¢kŒm¯Îöµjs•¥„à M¥®%‚¥ydwªµÊ-~[Ø‘ùÿ%»RuóæîŠ<Ç[5'_³¡nÉë$œÙ6¸ E<`=Àfø˜õ±AxwìÆZIDÚ‰?7»²•
U³Êò46¬óŸáñ?S@h<pC@©d,Úoùœçì;¸|/G[#PôNôz„Bôf÷Œë,‡™QÌÔeÔ,!A‰+efc,ùƒŒ–c#£n´ae¬óM|ÏDç(œş#÷lQ[Âàz`LHx|'Ø½	>¹ìà‰=WÙ-øíÄüºPK
   ²•G’cJ  K  !   org/gradle/wrapper/Download.class…W‰g~f³»3;9X(¦lî"
’´Ô$vÛ4Á,	]Pq²;Ù,İÌlgf	Tm½ªõnµU¤^[–¶l(ĞâUT<Z­V[üüÔç›İìVÌ/ù÷ûŞã{Ÿç{çË•ŸÀvüSec…°9ÑÜ/[eã(pUäqLÆ¢
ÇUœÀ*>„‹æ#bÏƒ*ÂGe|LÆÇU4ã*šğIãSbùÓ
Qñ|V4ŸSñy|AÅñ%Ñ<¢íÇ|YÅWğ¸Œ¯*øšŠÍøz ŞÏD»‚o¨xßTñ-œT°SL¾-Œœ’S
TğßUğ=ßWğOÉø¡ŠÓø‘Œ§e<#ãÇ A‹™¦afuÇ1	ñk,ì·­œa»Ãáèø‰á¼;o˜n&©»–-¡qÿÔäSûâñ#£wNOÜ-AŠIX=j™«›îŒÍ"J	«F¦ÇÆöM‰Çí£h[³„`ÖJ§ZÙ8nÙé´­§²ÆÀ¢­çèq`Ü[’ĞÄyV8ÌXæ„¾`HÕéYİLÄ];c¦¹-\µmÆ°vtqkÆÌ¸{$ŒD¯ããZs×Jºf$øG­İ7gLc"¿0kØôÙ¬•Ô³3ºó’ĞïÎg˜ÇMõïµÍ¬¥§÷IËœË¤ó¶±2ÁŞ	¢Â³’*)HØ-gîÀôT¬jÆËd/LYO¥lÃ¡ïÆÚ­D!e8nÆ,Ùn¬Õ• î;4rbÑ‘ñ	ÍËnc¦kØ¦e<y;»Âğ85óa§èÌül~nN€ë;<ÂÌüÂ”!ÂoÊÙVZD7jå…QRæ.Zµò®„¶r<“y7—w™zC_ u?sÄx××x%ËL#)‚å_†ë­eı˜Y­&8É|Vwéå(%¬vÕ£‘J€ÊôQÅ†ÃL	®¯*NJK-•¥
Û,§HĞåT‡íä<Å­¼4DªyG–Ğ/ìhØ‹q·ã=†1¢aT4wcœ‰wİ\NPC/ã§~†g%ì¹­nşÿwW¸|NÆÏã/j8‹‚†%œÓ0	/i8äçrNG<@T56Ä¤šBÕKÂÁEÑ¼,ã—ğs)ğèª8GŸ‡‚Œ_hø%~¥á×xUÆe¿ÁoeüNÃü^ÃD0À™ûŒàŠÏ¹FJÆŸ4¼†×%¬)Ã=Y&®„ÈrÚu§½J±_DC5©_ÆŸ5üoÈø«†¿áMÇëş!îÁÜ¬ºVš•Àl*N*ÙrúMt•£±îÁ¾±ÓètÚ£Î÷ÛU5ä«Pprö(é,ã-oã*¯0a©³«,oº;¶/§Îó[•ºªhŠb:Ò†[âÑ		[£u*c½kÔQ·ŞV"ğ
U[ù:¯ø¬¨áî5æô|–ucUÁ«ÙçÙĞªùÇ{%ÂÕmî)Î›—oy¥ÈîKelÇ+­‡–”J¤„€k±¶T)Vj\KôÚZ‰Ö¯Y•ĞJú¼ÉL¢Y)Z6¬pQSĞÚê¯°˜17SÆıyò
.ÛêàRÿÖÈUUG	ëª2T[6×Ô³Û^DtÅj(s`¾¸´:™·ËóÚJ[”ÒüêŒ«\Îêê½ŸÑÖ	£JLÿ91£V=F
`şççS“.o©V×í¸H¬™4jH=ìíuF³¶ÜgÑÎ¸ä›Ì´Äb"€¾n(Of-Ç¨½Y^ŒbÎ²taw#_Yêİ3ÜÈ÷ãv¾İŞ‰ 6`79â»Ğ‡[9¿­j¾añ}á8,>1^?êõîÙ‹}lÇ8s¹×Ï~}÷¤î³ğu÷ECwßYø)
œñ¬İÁv‚l7q÷f„°hÇF´¸“+İE;ˆá.ï­ºŞó/y#Ï‰8æÇ®Áçb×ÚpğäËh¼ %!-!tjÅ{#w|ro¥×¨çQ+ê•<J¸Ü-lNs·ØßÔ[Àª´ƒİ=½KX½Ò\ÍõrÜç™k/ª”Ğ„Iì÷\4á½˜¢fœc?%8^v&ı‹)]Í•«Ò„4è) q0xM‰hNĞkËÂ‘`kEF×Ê¸5"Ğñ°n0Ğ²­ù¢2¨„v©‘@D)`}bgÈ÷$&Ï!RÀ†'Ğú<6†o(`ÓlN„·,¡ıR›ÚzXß¥¶©kqãBèñShí~¾ğMÜ|Ğ»Ô¾ˆÒĞ* óôöV·°-¸%( Úwİ}tÆMƒZıuY¬G´KgxÔ Nò… ş]ôúb" ÄL>23€wavb#v‘ï&J»¹2ÈÑ¹p‘ßÃ„Şy¡“÷‘¹ø ÙøSù(a8If<En<C4Ÿ% /Pã<e¯Rv…²×({ƒ²·	† -G«ğfpüŒ’Ï÷ÒL/ï§ŸCxœ»3Šå‡ğ>ÊUVæ«e˜¯–`öá->Cx	d¬~íMÌ"É¾š|à”X,H °×™Hÿx¸›T¾'ÜÃv"ÜËvĞî] Ü/º`x@trø–fåelO4P«!ğ÷ÄH F‚ñ„‘ã	¥7hö±!mâçğçÊ©ïğÎĞñ½LA-<Şzu¹•Çìã!DŠ¦Š•àêSÁO=uÓŞÅlaæ½‹)®o†#?­Œà(ÿ´5D¨F˜Ş>¬—^¼8LB-J‹Ğï šúÚAÀÕÿPK
   ²•GÀ>ÆP   N   #   gradle-wrapper-classpath.propertiesSÎÍO)ÍIUHIMËÌË,ÉÌÏãRöÍÏSpIMV02T02²24³21QpvQ0204å*(ÊÏJM.)¶M/JLÉIÕMÎÉä**Í+ÉÌMµå PK
   
²•G$Ù–eÎ        build-receipt.properties5½nÃ0„w¾JA”3hÉV ÈÒ¢kAK´£À’I6úøµ›„Û}äñÈau³½®~à¤CÃ¾œç\È/ZIlP)Tˆ¬ßä^`¢÷®¼[­ºv°Æ²í*96Qo‡º;Ÿû–h¤¦gT5µp‹¹ò¬-o(¦DvfÓ.Zò-=Òœî´Ñ7§ìbĞ(:!¤‚˜¯‡ùÃ…õw¯~%°òÔªÓÄ“3°¤xgSô#’y~kæô@1´„í±äB™µ(_àé8ĞPK
   
²•G              org/gradle/cli/ PK
   
²•GÈô–<  S  1   org/gradle/cli/AbstractCommandLineConverter.class•T]oA=‹+¶ˆm­ßĞå£tÛ>™BHÑhBªÒÄÇe×m`—C£Âß¢/4ÑÄà2ŞYP–´ôaçŞ9{ï¹sæŞİ?şpˆ#	ìèØ5ÁÏ•÷By9yE†xÅõ\Yeˆæò§Zİïp†Õ†ëñ“a¯ÍEËjw	I7|ÛêZÂUû	¨ÉÏî€¡Ôğ…c:Âêt¹iw]³ÖHaÙ²î÷z–×Qduß;çBrQfØ¸ÌõµÿŸïè&D•V«\%6İ#Ç¹Æ™un™]ËsÌ·¢XË3Ø»ö·e9†H‹%Ò²¶ˆ‚®IÒk.Õ=,È÷-1à‚ak^ÀÌÁß1½è”•¬)…ë9¶(id0^}±y_º¾7Ğ±Çp«é:%‡‚®ì`i6¢Êt*­ã°ŠjºBL¨FÓ
›¿vU³Wõm_ÕIÂÀm†Ìu×•D	ûI˜8HâŠ7˜†Ô¼&†í%D…ËÌDÕ„3ìqON›B¡üä:ACvs×Ï€úÒbÁÌ0¼\8´ùy’ ³3CEwş&T*µÔôkYú+$@Bèß!KÍ¡5I»YF6V¸ ûANwh`+´&ÇXEŠìİKHš,£Î­Q¢ûFV#»ù‘ˆJ#h…Rq„ØŞñïÓ
+dAy	¬Ó~#¨TçN*)oŞ°À»OO„¢Sx€‡”«Î‘	86'çÇ?šÆ?¦ø'äk„<Å³@z†±—ÅV`·ÿPK
   
²•G2_e¦   è   (   org/gradle/cli/CommandLineParser$1.class…ŒA
Â0EÿhµZvåºˆkCÏPEÁÄv¨-iIõp.<€‡S\ºp>ó?fŞëıxÈ‡CD„èln¶àm­˜°ÈMÛJ]îkÍ'iÛu#ï’0ßèBWëêÀİÕ”!f„¥±•¨¬,‹BÕâçy•@ˆwZ³Í•t!é‘BI]‰ã¥á¢#¤ÿHIê9|gèßŒ|{Ÿúüõ-™| PK
   
²•GRB	¨  ÷  <   org/gradle/cli/CommandLineParser$MissingOptionArgState.class•]OÓ`ÇÿÏ6º­ëd  ¾2”½ cˆ€€&‚/1N4Á`‚W¬™5İSÒß/¼ñÆı ^H¢#ñÂà‡2§-sKÆ–&í9OÏù×´şşú „1äUÄQˆ“4%Õ«*˜–gE)ÍD1Å5ÅÚuKD1Ç0ôØ“ŸpÛÑí—»:ƒö@İ^3¹ãèÃ\Ù²«ÅªÍ+¦^Ü1âšU«qQ)B÷ı&@–)ÊŠ!÷ÃB¶@n“!²fU(ŸAi¸¾WÛÖí§|Û¤“á²µÃÍMnR#îƒÒyd8!ª>ò¶]ªZìEGO*%Uão·uÒl×GQ²å—ü/š\T‹®MnË¹-†0·«2¿#/’–hAlu@t€ö×ı„%Ö-q*Ñ2ßÕN¹wÓ e‰&“»¢Bµgs›Q\g Ãó¾†Şİ§ä-FèÍŒ¼•&ãÂ nX{ö~Ï‹2zÄfZöCÃ Rò6¯AÅ	Ó°ˆÎá¼†%ŒGA¬ùşöˆaª—3ÌöŞ@†L÷v0Lc8~£c†s¸Cª7ğ]S—af²=/Œêµb¯¦—!İÍiú€Å!WiXNƒ$!9!:"í>i!z&òì ¡|á'Âû¤†Èd&Ïw`ï¡²8Ig£¾9N‘O’XF×iŒĞ¥ ªäuD¾5x
äRlâ(‚38ëqhKÎCŠO ™ÿp…©:”ïm¸O.í6pÉ '%•¤É0€o	Æ%˜rŒ¶C?7åo@ãÓ¸ <=@QÏş·O•îìbì«‡Ó|C—Ma"€Ü!Ë°ß°°ı¶d^7UØÜ°Ë^ã¥t“^EYÏ3G5Dh8%hù+aòVÂEÒ3ôD*öPK
   
²•G¼¬M2‘  ƒ  =   org/gradle/cli/CommandLineParser$OptionStringComparator.classTÏOAşfºeam¡ò£`µ‚Z¡Pd) HJˆ¤‰	±‰Ş¦í¦YvÉî–ø¯ÀÉ›{ñ‰&Æ³”ñÍv­Bkj8tŞ›÷¾yïÛoŞôÇÏ/ß ñÌÀæjÑ± cÑ€†%µ˜:–UšlQÇŠU†-éÈ`›!–Ÿ?`ĞÊnİb©HÇzÕ<®ZŞQµ)2ZqkÂ>Tû(¨‡ÒgHïÒuöO:²{|"<¸Cb×q,¯lß··Yq½†ÙğDİ¶Ìš-MÂ§®š½oy¹Ş•Jz-ÜQÓ¹|åHœ
ÓNÃl#Kİ‘ù]:ã†ÕŠŠ} “^!üC×ÇŞıŞ¬\k´W=²jA©;¢ñ÷ËW{D9•!¥×–ëûùÅ’º„Üÿ †öeÃAS‰²õ/ªÍ@Úæ%·º…Ø¦RÆ¾ÛôjÖ©n5İÕnIJ dO±®cƒáy_eá[»o9¾ä©Õ=Ó}ªã£&fH]çÍ°qÃiºR¬-Ãx/µö¿	šÛrÁaø†hfúÁ2=BƒFâ=Y\	K»aÚ™diZ_¸ÿLÇ­*ÈSH‘ŸhpãPsEòD‡?!Fq`§p˜öºöZl{ñïİº–=ƒ1¡#Î[Ùså!®µ¾B{Ë./z Õi|ŸşCÀG1ÌÇåã˜åÈóIùVy&$´ÖnRŞ$¦B’;¸C'r«Èà.ÑË"‡{äi©"ˆ¿¤LŒlr¡ğú"ı.0Øêùõ3m`§Y’(N‡Í’”›V055QáM²<’“õ–3İt
Æ©`ò1<ñ³˜mcd3B£ä= ‹Ô İ`OùPK
   
²•Gè#òG  K  1   org/gradle/cli/CommandLineArgumentException.class•‘ÍJ1…Oú3£µ¶Zm+êÂî´U×•‚ˆ‚0¸°¥ût¦‘™D23êk¹*¸ğ|(1IK-‚YÜäÜûİòşñúàÍ
Ø2aÛEİEƒÀ9ç‚§=‚ú¡O©QzıTqv†…K9fUŸv›Å#¦ti¥æË€FCª¸Éçb!ğ„àÄ—*ôBEÇó‚ˆ{—2©È…
³˜‰ôê9`)—¢KàÆ,Ihh©¿\´—xû¦&J>™ùÖp1 Y¢Iõ¥¥¾ÌTÀ®¹ñÛúËØ©”Q„cB… óWì~Í¿ËDÊc¶¸Dyıfå@Ì]õtÓ»ÓîLA^ìıŠ%«6uåVõ©1«Òúš¥8(c]3«2gİèy½»íÎñ¹Ÿ°=İ´oa³²ÌÃÌ©ŠkqÓv×>PK
   
²•G?hÿÇ  ‡  =   org/gradle/cli/CommandLineParser$KnownOptionParserState.classİXkxå~¿d“Y&†… V§šds‹Ğ´!¢¤†@LŒ´ÚawL73Û™ÙìÅJ[íİ^Ğ6V{±ÚzJB¼Ô^°¢õÖ¢Oÿöyú<}úßŸ­=gfv³›İ°‰?ûç›óïÜ¾sûÎîÅÿ@;Ş•±w® %!£cL!XŒIòòy^l^^\¦OIcBÂ×à¨w1ô…0¾X/áËLt·Lâ¿ÂÛ{$|UÆz|=Œ{elÃ}2¾oòÉ·d|ßaÂï†ñ=ÆÜ_ïã¼üPÂøø8? ã”ğcu°Âø	'yy(ŒŸò÷aàgLûó
ü÷Kø%«yTÂ¯$œP¬¤kXæ€kæˆ„“„Ù—…¡m¯iêvOBsİhí³ì‘Ö[‹'ôÖXÂhí±ÆÆ43Şg˜ú~Ívt»&›‡@¹¯AàêË°ú<D]›G`ñTÄ³‰¥Ìq5W—pŠ¸}!ĞRÜÖ,z6u\K¤ø–•}‡µq­5å‰Ö>ÃqélÅ€1bjnÊ&Á5wúû„f´÷îbqî¨áÔ´]şæ¾L½Ó0·KàB}qòeF¡¸ç‹;zyÎlõXqòÖLÒŸ;¤Û´C	ÂDú¬˜–Ôlƒ÷2ÄŞXw“iM˜¾U9ÑÜ^Ü€Â¬ä[Ù2»í‘Ô˜nº»êóÃÕ°ÜT	ky‘|q«Ø÷šíöëG\R-ĞV¿l«FtwæÌ[^Zßp«wâL&töJ™—²%FÀÚ¬¼ìuu[s-Î¬
ËÕí}A*I/´ém^²åE>È	@àßÿéYœºİKá’#m¼´óÒÁË^:yÙÊ}`	b(`VÊé7œæëòhZ8h
ö WÁ¸‘¡'ÖÌ‡²Û¶µ£Ügøè×
v¡GÁVlWpv(Ø‰)èB·‚A	4.nS:“v‰éAø·ÇÍ	:WıV­ÖÕ:ujÜÒÕ´\ÕÕîÔUÍTÓßBıq>ã÷:¬ÇÈ²ßàI6ï)Oãİ¦ª%İ£6uBsÔ¤mq=®ŞaÙjlÕ-N+8ƒß*¸7+xC
ÎbHÂ”À¶¢.ßk8e•Ÿ9tå TÄ³ÍÓ$µßú †*˜Á9	³
ÎcNÁsxFÂó
^À‹
~ÇÁèÚ›J¸ÕjFº£Nè¶¾dù/á÷ş àìƒ?áBïıòQğ2»ıÏxEÁE¼*°~!Å®”‘ˆë6õØ£ºªà5ü…—×6¤Õ×“¶#ŸÄÕf"z¯HxSÁ[,ümüUÂßÔb•ªàŞ¸ööj%¶¦ÕpÍËêAMËi ô¦/}ºâ½2h4ÔÚi-§lÓ¨Óo/ğFì[Xuôlxzª
½o,<¡›#î¨§«—^—Ü†ĞZ<¾€;­†^=Fİ‰„5‘yè±–g7ùeÃ¿§ÀÁ%8#ÿñ^ª+´XLwœšöÎ6jÙ=KÖ• 
xrá¥ò^Éié§ô¶/ş´å‹=ÀT¾qéÜ¼42b6Œ´‘ú†ü¡vc&¨é>•Ü°Œôhå0g‘|,eÅ¨æğÜC›Şgm}C~RqÈâñùá¦Šl¹>hAdıf›^]æ2gb“‰÷V÷ö%%ÃjİO2Ü!›ïÇƒ·–Lê&¥~sÁÁp‘fºcı¢9Ov­t³YSÀr\’w	ÒÈ7ÚV*9dpÅ®Îñÿ€ÎŞ[™ƒ [³Æ3±¯½œGÒ©7•~’vÒOŞrDx¤ (ÂS…÷¥ÁÂûÒlá}iî ùïz‚K°»²’‡³„g:ù$íD)a€¦hãJ¢b¥Ñ9„†gP6…òhÓ¤hóÂÑêĞVD«	+Ÿñ$ŞDë•hÄ<Y<Š*ñ6Š“¸JœB­xâ	ôM'ÊX>öbàAlw‰±å¥Ä¶‡<ˆ­/#ëöãS%¾?:Š‡°iÊpdeèy¬.…4pWÌ òÅÆi¬NGò	.oœÅš‘ µ§3·ØÈOAO“õ§±YœA—x½â¬wƒu¾öÌúñimps`ãYOã6jIKxU“¨f}³X'0‰•sX?ÌÎİp:Wõ*¾¾`ªóPÅs:Å¨<%J:<¥ høJÌÈ)g¼x)‹?œá¿%m¤x€INeìÈIÔeYè{­º ×Vğş6úZ7õùl¢Ñuö€Ï…N¤o~e:WÀ,İ{›fñV[EÀÕ‚f¯kú›§Qsêıùbj/ ƒ ’sØ<‡:JÇúHÃ4¢,m‘&fB‚¦A¼-ş¾umY
6¤´÷óMˆ®ãÔûÿ$PÂuˆX#^¦¬½H±·‹×0!^Çqñ&Å›xX¼…“âm\—ğxÿïR,şî9¼‹Üœrv˜²¢÷`nÅA’ıá3^†ÿƒ*ÅÇ‘óƒÀtÑøYÜQ	ªG-±M²$b´±©¹:T]6qfA˜ñ´îñé2Y©àÕ·ğ XPa
âA…)Ğƒ
Sp‡Wa`Ôë†§á0>ê%Y9¶á®…ŒÓ÷!şìe}	n§/*ÃXOß¯ÿi;†ÇBòÿ PK
   
²•Gk±Í  Û  7   org/gradle/cli/CommandLineParser$OptionComparator.class•UmOÓP~n×ÑQ:oSğDoe€ œb0™!ñcÍ,éZÒvÄŸáá‹_ÀHbøì"Û6s°JáC{Ï=ç9Ï¹÷¼´®~ıPÀŒ4ædôòWæ%,È±(c	Ë^JX‘‘âû^IXãğu	E	^3tm–ám2$rù}±dê}ÃÒw›İù¬˜¤¨Ø5ÍÜ×ƒïC¥è}5\†ÌŞ±gØVÉnkæÙƒR¶,İ)™šëê„XªØN]­;Ú¡©«5ÓP	ÛĞ¬Cæ“æ¸º3y“£È Õüú»… ğ,Æ#òeâ´}¹À0ïĞ‚/Ò]÷¨i'šjjV]­zaÕ‹ S¹6ãŞÁ‘^óŠ~
áÛÂuªĞÆ-	Tøt±Y+yÕ&ïdè®uKóš<£•ÿµé¦ú¯ñYÚ$j¹j7š¾cğ¶Èv„ŸçÔ
2èWğ[¶VïØA–Û›+màüSŞ*(áuåÍB1lÅ†,i®^¶\İrÏ8Ñ;cÅ Œà=Ãx\Ö8n”¡pï¹¸v± rCQ¥£o*]]÷‚ 4¨ı¹|[TuŞ’·Ü%`anošt¦€.AƒAiÏU¢ìÑWÌGÅµÑ
ç®S“/c¾o½4<}ôu!ğ–£İ íTZi®œ>‡ğƒƒôîâJv…!’• €a<Ÿ@*QèüÈ’´®Ìœ!qñ;Gò'º.!íÎv¨ÖÅ¤ø¾{nD<ƒ|ÚŠÖ‹1(ĞÁº0‡Q¹ôı“¬à	IÜó9bŒ|§èbã$‰™m:İ³ğtÉB¼HOÏ\¢g–3(§‘W€­`iL9ó¥I’„ø…Äk´
aÎXtÎ² E˜$ÂÙÈûøiÌøë,Ğ:AyLS)²”Ù´"“"J?²QúA©XÅè_PK
   
²•GäbÕ'á  n  ?   org/gradle/cli/CommandLineParser$UnknownOptionParserState.class½UËRA==É$a2@ñ…ˆ(Éá¡"ˆ"¥¥UZ…²`×$Sãèd†šL”_ğ_\H*~€ÿàÆ×Â7º°¼=™
B%qáæŞîÛ÷œ¾}îÍäıï·ï äq[Aã
:0ÑA«œ0“ÂäÅÁ”‚iÌDq5ŠkrÙãÅCüwËº»&êÛÖİe‹—Ëz™abÅqœáò¢¥ç
–™[vJ%nWL[¯âFêàó!îÉ•güÏYÜ6rkkÚÅ‡X†á£Ì>O±Ÿ ‘Ó6½E=}œ±9A{ÅgÖÂËN‘Šë)«•Ò¦î>æ›–.^ä¸µÎ]Sìƒ`Ø{j’HOìç¶óÒ~¸å™ı—œ-”p˜ßeèŞ}^^rJI·=R7Ù °cS†ë­êÛŞ’{2i·OŠcÒŞi nÛŒ1^ã#rÊŞ²t1b7Àğê?4°yvŞo²´=)L^˜)a¦FZÓËÖœŠ[Ğï™¢ı©c9â*zÑ'Ì¼Šn$Tô ©BA—ŠaF± â&£¸Å0÷ÏÓÁ0ÕÛ ÔÓ –mGdúá6Ša4İj3†šC'/ïn{._çV…öıÆµÕ±+1DÂúX†¡UR´È÷Ô%òH¢}4±ı´+Ñ.L¾_c´±=„´ìÂÚøä:"›‚L3ş2û…}F7û‚>ö§èL«` g %.dşJ\)ù+QLˆ¢gq.¸:K^dIá×µ{""Â¾ù¼jõ4àe8Á ™²¶È›#àïu`¹¾@ÊTÁsä¥“À?|pªšP{‘Œ‹ş‹˜ï€f‘rÄ	m—ÔÚEhQrò!£"XØOÄÙ¯º’UVêH/.\¤ é‹˜6–? Û9RÕ?SÍ©UÃ•@çFcHû:‹UÆïŒ„1Ÿ-‹NòÃ‰cjXücÎâ4Uy‰<blfq=¬üPK
   
²•G"zÉZ’  ™  &   org/gradle/cli/CommandLineOption.classV[sÓVş”Ë±EÄá €cÜ”¤P·@H€¤IC E±UGT‘\YæÒû½ı¼ô­å¥´SÂ¤ÌtúÄCgú'úCÚ~GVdÙ²K¦“‰ÎÕİow¿=òÿú€—ñm;0%c:6Lu`;ŞèÀf…ô¦xÌ%pó	ÜÄ-ñxKÆÛ	Ü†*cAF>Îê©‚4!½#¤¢x,Æ ÇpG(ßÁª%qÖKFIÆ{d«äè–Y–Ğ5~G½«æ*nä¦4gXBÇ”^4U§bköÖ¿©nÕ,æ¦[7‹Ã'yBQíbeI3é%Ú°5Ôr™&›u#q2QĞÊy[wÁHH†İSYĞJ¶–W…É¬j›ÔJˆëf¾²@ØH7ºh[•Ò¬î,J8ÜÚ²‹¹¢­-—7ôÜ¨µ´¤š…qİÔ&İÈnÑİÔ“Ré Œ1G³ÕC˜‘µ
š(ONT–4{Z¼À­¼jÌ¨¶.ö2jyiµéı~\P®SÇ²5â,êìÂc¬¯¡KBO}p¶ÀĞ,Ì®ÙVÔ!^ÔœÉUmH„(´¯Q×"lbQ-Ÿö¸#a("ÎÀZêr<tNkMGûÓk2S8™r'ó?$î¦Õ|ë©µµrÅ`f[BoÏTt£ 	tÒw³£é°¯5¡LÖiÃ°î±¶§8[ıWWH/ZÀ$¾:aZAÂf7·ğÄ)Ô_¨ÍØP¸Ãkš²dº,‚OGÓÿÃ—KÄ)«bçµóº {OÈêğªà lÒ´á¢Z^d;±KFYƒ½
öˆGFh*
îâŒû
`LÁûø@BwcOd|¨à#|ÌÖ\ëe¶;Õ¢Û
öa¿‚Oğ©‚BúŸ‹íô1_kBß`/µ[
Ò`áçkwu_bTÁWøZÁ7"vß‹*U‡|rá–w\RÌ¬âv_ÌX:{™»z=
_bºwi±Ğu½\fÉ°–Ÿò{B»Ï¨Ó]ê‡¥
‰‡××Q€Õ‚ c:l+UK%Í¤Á`Óii=nQC3‹‚Á¬Á˜„íéÑÿ²9VU%"
!s­£–a“ ¤ËÖ–¬»vóó»ƒßú(’‚e`£¸k£¾MÍß÷óŸœpåŞÊ®sM
.úvY~Æ%yò!j~G;"\/eBÊ<CÛÜS´?A$ó3Ö=A´¦‘³+ˆI¸rpb…¸Äó‰‰Ì/ˆ®@iÃì£şú‰ŞÚ‘ãsb|î¤ÿºĞ‹æ²›X†‰å<¥1Z¼D‹-†‘àï™ı<™æ›Wp˜øˆ
G0¸ÒN%òc”®UÍq?¯W) —jV9î„Í:í±ks‹(”ûÜ U'ë¼ U'#Ô½†““k\9“•xìçwÕ<œq]õTÍ|¬²×™V¡é÷±rÃ¼Î§sŒaÓ‘ÙˆÄj ¶@ C<`îğI8İÔÉúfN»øš99ƒQÏÉŸ^ÂÚ3t²é]ã¬^÷s(Y±.cÃ,×äs¤³ËØøâÙî¾elšÍ&7‹wÂ(é
ÉÏ6õ½¶½®É2¶Ô  %ÁVÆØÄ.îzÙ‡],Ğ~vba¯æYş]Æ9\'yæp‘¿B/Ê¯y	Åp‹vç\œÇ/µSÁ^v‡ª3Á^N¶è¥˜*áì"ùZuvÂ+v7sŒrN¾‡y„HûD›
Ô»Û¯÷¥æ~Ø·Zø™mêçróä’¡äæ™ÜÍÉğ’KûLò@É™È¤BÎnÓ™À#ûxÆ}§/Ù8}Z“é®4]¹ñ°Şrt'Ü{dÒs¢yI	'¼¸¶òjbfÛ(Ö®¨N®À/“Õ±UJùØRŞÅ[g¡Éúã|•Ò5Wºş/PK
   
²•Gœl\Ï§  ¦  8   org/gradle/cli/CommandLineParser$OptionParserState.class•R]KA=³Y³vMM´šâwŒ)F)n_$"h@‚
‘<ø6I†íÈfVf'%ÿ£¿¤O…>øú£Šw6ivÎ»çË=wşüııà_|d°éÃÅ¦‡’‡m†ì©TÒœ1dª{m·÷C¾)•¸ô;BßóND™ÅfÜåQ›kiïã¤k¾É„aáöÉÈXİqİ2ÜĞ¯ÜµRB7"$‚(ÇÍX‡A¨y/A7’A#î÷¹êÙ>£ºÊ;‘:Ã|¬(ÔæFÍ¹=”æŞô©U÷&K¿õcEZƒ¾P†á¢Ú|äßyq-£¥
ëS+Î‡Â\ñäU•Ì|HQåS$Œğ°Ã †İêdíÃºİ„3¬1Tş‡MZñ@wÅ¥´K)¾ãØ	s˜AÖC…áhúU0^]ºí<Š.ùu—Ê“Ga(M"¹%zÂ.ì—…cg"W=º„d1föÁùIƒÙ”d}ÿçFøø¸´6,¤¸ˆO).a9Å¢Í,se,~BèŒÅÙ¿Å‹#ÂH<V±––­§üjÊeèlaÎõ‘',~&DaöPK
   
²•G[xn˜”  Ç  &   org/gradle/cli/ParsedCommandLine.class•WÙWşFÛÈÒD±UÇİ&UÓ8–e9†$Ğx©‹ã&MÛ)qIpZ
k"Og”ÑÈ‰[JK¡Ğ…¥¥š–}3‹¤4	&?–7øñÎo¼ğW¾;3KÖ¸1/3çŞ9÷;ç|g¹Ò?şûÇ?ø0ŞO †3ŒäQ–q)¨»°Ä£"ÃN Åİ©&±„ËI\Á²x<#ãYŸK FÛñ\ŸÇeÏ'ñ¾Ç‹2¾˜à±/%Ğ—d|9nq|E¼_ãñ~Uh¼&N~5‰¯á²X~] |CÆëq¼‘@¾™Ä›xKè|K<¾-oÉø„ífÙÖM£rdyÖ¶t£È©‹ê’:XµõÒà´Z‘Ğ2«Õ®Zš„“_GİeI5Šƒ.ÀÈ”i‹–Z(iƒó%}ğqÕªh…	sqQ5
Sº¡r,Œ9U¶´ŠfØîV¥Ñø¬fSåÁÆ ƒ¥-šKZÁJiWlK·ŠÕEâs£µgJ¯è½¶6Áê†nIèÌÖ)œ°5K=_ÒFúÎHˆL˜MxÏğfª‹ç5ë	ñMBzÊœWKgTKko³Ååœ&„B“M	!}¯„ö:ïc¶iñ›Rvøt•İ*İŒÃôÎìÙx&H;b/è• İ&|êÊföö †$t4Ò°\®Qq8@ôîî‰´ŒecKgEÆâ¶Y+øöl_P”KUÓÖÆÂ¤©¢ƒ“t2VñeW¨î«v¹jKèj:p¤ª—
šH­¬WéV…ZÒ9‘Ù ğ+ttËºş¶,¨•Z=íÈ6kôÑ›ÖÕ«¹Ón§‘ 7–k'»²u;a–JÚ¼Ã·8½½d§´%­ä÷gG°²„\à‡M¶ú¹DÕ¢Ûzµ5ûè†¹’®UOıdÙ×´¹I ÛÔBÁA<£–ªÚ&ô³\£Kî÷ê×:@÷îåÿ„«¸Cµf¯§iÖ Ó×Ä¬Yµæµcºhğ&øıÂi‡ñ6	]'é¸ZYà…¢` û›>pğ+¼o(8„îYÿ:nYê² XÁGğQW¼ƒwe|WÁ÷ğ}?À%dîæ73¶5Vü?–ñ6ÄFîeüTÁÏğs	½q8œé©ä3‘»×x[‰½ÀSç/²Ìà”‚ü‚WÏ&SƒwE>£à—ø‡F¯‚)L+˜ ùı5VeüFÁ'1§à·øGyİŒ`§ÕRÍ«£Wæ5‡®O™ŞJoÆ0íLA»ÀèûEÆ.È¸¦à:V¼‡§ü«Íä61'!œu‘nQœÃºwµ±Tš¦îÊK7ïrXrúÌ[­1œEã0w‰$D‚ëÏ¶CîÏŒmkV%8Óûp¶¼y'ĞƒØÓZT‰1Ğ¶O~0ÈúÍ¢–ËšQX|ƒló«%>o¶ª‹èwÄ lš¤¼(èØt((ÌTãØãyN,áx¡0^*QpKğWj'DG	ƒ\…ğ!®Ùèşú ×‡6¬Ùèşú!$ù>Œ!ÊÃ€4€0dî¼’»)w¡¹[ß@„b”bìäu1N±…bâ’ıkP$Lç×°MÂUœ¤’ğWlŸ¹Vê´Gn"½†{$G»¢^FHbûp,÷>"]±®Èv„qvåÎ¿Vî¼wÎ„1Âç(|v3äü­ßA©“?Íw2ä{1‰û0‹]°±/â~¼„^&I£<qœÙHáaŒ!†§Ñ‹Gğ1şÇ˜%â8o’øx”vÂÇ¯!AâàHEÂ	Ê
ßîÎ¤OâIJœ|’B|‚V„Nº#ö'tÎ…sŒK¾…³s!&1*Ä¸ÿ€®kŒÒ=Úã8îšê÷Ü‰qæf	ÿá;Æ÷éÛè&·÷NGÆ\ş‡#‚=‡ÙCBò˜îz‰|ú¾›Øu6ŸŞí¼º¢u«ğØÊ¿çoâşk>İûÊèC9$èE–—g­dĞÃ$}œuvœNrgš5&<g±SŠ²ÒF2#ÂSŸÌÓ¤XçÉÓLBˆèÇñi×,´ÎøŸ¥ÄAì|‚;"Am¹ş›Èœì2úBXõiL8
ÂGÇ:Ü¾mÌ÷á$œû Øx0ì$aOŞöI<ååêM¾}ÛS×!İµiŸÉ±3¼ŠhduåÎ¿Ã«~
:H¢¨§nR±‡$ì¥¯½ôX˜Î´›	ƒ¢e3~İöùîôáS¬÷úº;Ÿöiı%^v^ü¢„…hC:»7DçZ§óÃÎÛè™Kï‹8ÕÜ/
özÿ’_¯Ú´aM¦Q¾@''3.`C.?)¶¬h½åó˜÷˜t˜¢¢I6¶D©®%¢ EOFİ(õ²¨F‘eõ\ßÀ2KûR]ßAEÇA0 İC4¼înàeF”]Ş™h}41°îoÊ	ZLœ*§Ò’Ÿ-"øvv;ÓHr¤	ÇçZJÄÙ‹ø¬gûÏöPmvúõ“­«º2°†\ˆÛ)Q·\ô‡Äıçzèn1=Ã!ù,İy·Àóœû/øîíâ(}Ø)¦{¿VLC¾ËC£"C%sñPK
   
²•G‹A5l|    :   org/gradle/cli/ProjectPropertiesCommandLineConverter.class’KOÂ@…ÏD|?PÃ¢ìÀuã#QŒ+¢$÷C;–1m‡	ÿJW&.üş(ãª1ØDã,îéœ9ßôv¦oï/¯ ö±[@ylæ±•G)‡ívÙ
}FHWkw„LSºœ°Ü!¿]®nY×7ÎZK:Ì¿cJDóØÌèZRy¶§˜ësÛñ…İVò;ÚHŸ+-ø )ƒ€…n´kS†#cruLXõøgh|Ó×B†„j­õÀFÌöYèÙ­Dè™èÎè%×LøÜ%”Öñ…*‡_‰¨å½?õÖˆ:("‡<Ú„bJÕö	®­ØŠtòfë^*K÷¸Õ
ßµ¦XUŞğV½Œ£Üi01ÈkÂÁp8ƒwZ±ß8T0gî?Pôa¦Î›™m”ŒÎí=ƒÌC
S³s¦§£‹|	Ë1\áôZêq-}CÓ_èJšEË‰èjš™E+	¨ùw'©õPK
   
²•G2lW¶J    F   org/gradle/cli/CommandLineParser$CaseInsensitiveStringComparator.class¥S]oA=3|,àb‘¶øYÅŠ–/»¥úb JbB$jBÓ÷œfÙmv—Æ¿âàÅ—šø`|öGï,LC˜{çÎ¹çÎ=wöç¯oß4ğ<O2Hé%=½”Tt¸j nà©}†dK9*8bˆ•+'ñ¶;”]åÈwÓI_zÇ¢oS$ßuÂ>Òû(>*ŸáA[ø²ãøÒñU Îe/ğ”3n»“3á‰ÀõÌãH¯mß—”ğºëzckì‰¡-­­,ÂN„3ÔU?Ï—^ie“Á„;ºÆ^¹{*Î…eglÍ‘ÍåH¥C9îY \§¡ûY,©³¡Xç
ûûş©ÍåˆfçŸ.Ggú¤aÀb@H·¶ùFSÏ¢ô/@†tOLµ­¿]u(Ûú#_k¹û#¢ÊôÜ©7o”na©Ü¾N2‘Á5h˜8)™»Jeb[1¼üß1_bŸ7Ä°µª#†İõj1lFæØíŒ×“º>ÃöŠ¤š^ ŠëèIƒ>7Ê¢0®u¢I;‹,‰êWğ/äpdiMê Oâ:ùæ€ä¡Ÿ	I%'›¯Õ/;ÚùŒÄÎLûñÙ‚)¯<…$O#Ã30¹²Vç™«ö¶Q+åq“<Nw0q·Ë½¢šw¢šo£­Ö~ Q§ÿ’³•/Î‹YÜÅ½°D;äñH‰bDü‚,”`«•(ÌÂ>¤óvCü#”Bû7Â>8É^Cî~Ÿ,r©ßPK
   
²•G…¥´g  Æ*  &   org/gradle/cli/CommandLineParser.classYxTÕµ^+ó8““$‘ ƒ<"Éc’ B€ğ2DT”0†‡xHN’ÉL˜™ Q¨¢Ô*õQ«¢`}W©­VEIˆQ¬­ïbm«}İ>lïíõŞ[Û{o{Ûzk[é¿ö™™ÌL&öããì={¯½ÖÚëñïµwŞüø¹D4‹OæÒúùüE>Éç¯ı-—şNëä¡S:í`Ò©‰Yãti]:ìÖÙÃ^™Ö4öiœ›Ç:çéTÀ†Nù<Bã‘:ñ¨<Îç‚<.ä3ä3Zã"ğÕi<ÓØ¯Ó$ïã3å÷ùLŠI:]Ã“}\,#gÉgŠŒLõñ4hÉÓ}|¶Æ3t
0‹äKuªböq™´åò	ÈŠ
ùT
ƒ*á;S>³DOµnvŸÃsäS ñ\sµÆótZÊó5^ qNËx¡Nµ¼Hˆk¼D§óÅ
KuºPfó¹×êt±0\Æs|\'V9Of–ûh§H9_>è|!¯ŞE_œGëx¥ë5nî*¹ÚÇkDïK|Ü(¿×j|©NWãu\ ½õâŠ€ô_æã&Ù×Zy£ô6ùx³Xçr·ğ:›¼ÕÇÍ¢	üÑ¢³Å­>n“ÉvƒLÄd¬‡­h]ÈŒÅ¬Ó˜Uñ`$ÜÃmu‘N3jÆ#Q·1M®3cÖŠpÌ
Ç‚ñàN+›ˆ)ß^¾n;Ó¸KÃÛÃ‘]a{rµYÑÆ¸·4AâÅ§™ë`*p3Õc1ˆ¶gk£mj
{©m[Q{4¦q„i´9?Å»¶B¯3ÜË¬ÖHÔÊ×¸3e€Ú]fÔÊ‹<ÈËÀ~tk1±jõÚ«¶4ÔÖ/ß²ºvíÚå—40ùWn3wšU]ñ`¨*jµY»«V›qh^È4*b+»¬;ÉcTu½Ù	šÜÆ`[ØŒwE±Ãå™³‹ìŸ!3ÜVe3X¸2m«j‹š-!«ª9¬Jìme0lÙÊ.\f(ÙUÜmµ$ÌÅÄ°5á/Ì¶XQ«ÙT¾€(Ú²ƒ‘*5´>Ä0XŸ1MB)ª–Œ™[C,î]ãK˜\%¥ë˜Üu‘K6µº:¶ZÑµBQ+#ÍfhÊïÄ ;Ş„S>ao¶gD|IJ¯„J"/?{ÉÓ)K˜æ•llÅÒlQŠKš@pÈkø	Ál Ëw7[É€Äæ—¤Q­€&²Ãá‰3”Â	1ÍÒÓe¸x­p2î^ĞŠ$ãW,ï ¾€„fÍÂÚHB¶Ë9ÁiÈ°´ˆTûAÖ/Lgnq×™½1·:m^Wy^9ôÖ37=&3ªº;“‘åä‡¤’”Y9lÚaysò@‘«äã´’AŒœ^WŒV!½[‡ÌNlÜf4
wºCVMAs6l|rú% %,ƒXÄ2Ñ­ÑŠcÁ9™#‹†‡_z§`Î¥1³Nô§{¦¶³ngßˆd ôèH´ÅŠ&“Èµ o­ÊÉ‘ü4µVc¢©k»ÕØØi†º Ôc…ãQù½Ün‹2‘yš–U‘®¸ £†È@œCê8Èdq~r4#3”†r¬ÖÕaîfššmAÇğ–µ¡Ó-tÚ†Ó1ã¸zîĞÇ“ã:÷¶H¶¨$m}]$²š•ÇBÚ¬<8&ÄÉéH¶jë60ÜS“±”+²eÀ1+UÈx·vµ¶ŠOÆ´LÍˆ¸V)2Ï÷†‹ÊdcKw$“ÃÜÔ§ÎèT*êfs³‹M›;s&Óô’¡A @Îî™+çËÊs†³rPÑ’d±@Xä%~ÌRª,>ÃAÅ…oèíBBoŒtE›QÃ	Ä¢RtİmĞAºÓ /ĞmİAw2Oò^ÕïìŠÃ¦–Ùa‹Ğ8nĞ¸Ë Ã¼zP>÷ 6x¡kÇ&qâ;è(wi¼Ûàn¾Ò ‡é1¦â¡ƒAì‘Æ_eğŞ+?#Ÿ«™ª‡<öëZY}Æû¾–¯Óx¿ÁŸåëşß œË-ƒoäˆƒŠ
ƒ?Ï71U)4½êY7ã¨¨ØxùâÍåßÂ¾•¿`ğmüEƒoç; h%Kc¥	ŠÅ•eßÉ…è.ƒïæC m5/Ó2K‡Äiy‰±ŠÍ•eHË48MV›Ë£ÑHÔàÃ¢ôØÁYµHB3öuÉà{ù>ƒïC<Àwü ?dğÃ|Èà/Ó=?Âj|Äà¯·lÊ6ƒã¯&"¿%~¾áàµQË‚ƒ™f³€¸N‰u¿&ŸÇ~‚¿ÜgÔÃÛ­–TpÎ&óìKœÁOòS[©FÍn924~(6è—ô+ƒŠŸág>ÆOiÜcĞO¹×àãYËS§ˆÁ}qîé±éáŒÀ³1Úàçøƒûùy™®¼ô)V\,>!i8Æ5~Qè¿"%­FÚ¶™!»]8¬S…8j/{ëÅ3¦ÇfcÅfĞÒ]Ü‚" lµTŠ/‰™¿iğ·$jêÌp8/6[ZŠ#ikM¬'GšmšXÜŒÆ‹wãíÅ3*fTtİªñË¿Â¯jüšdÄõL‡É±8u7GÂq3†¢ífÛ‰›‹›Ûá±f„Xñ)²T³eFå'¬í|_7øQdBÉ¦¥{6u^Uß½S½Š-›ËJ~“¼S†Œ%\Î’hÈçƒC²8İKÂpâİùiö§¿GŠOóF1wxp:èÉb¸ùœıpÁø4—¥áà}æ£GùééR/ı¼éÅ­A	öq¼p ¬Ï:¨UY?zĞ-ƒºæg¡Ê=¯ì’
hãàº°tp™?"ºÀ@üà4®¤ôt¥£ÿ4…«è4ÖùÆ™íÃ(„†¾J}¥¤ÖõT0qe´fl/í*_8x¸ÜnÆ¬İqõ ƒºÑV?F—”:ßùf÷V¹½GãÉÛdQ‰CY»AŞ'vt™¡XAÒ] X1Èjÿ¼M4œÑÍíâÜÜX×ÖX"¢‹JV8–â#$èÓ¶°ÁaÿÌíÛñfdB˜Y½×ÌÆs@Ö³‡·X»å]À-­¯pŞš® J%+Ó2'×|ZÙy‰3+v±Üš½¦ºô]yŸ¦Z“‚?IİİKUÙfÅQõ¨¯ÛSÈ4ó†¬p[¼]…)	7DÂIæ+Êä6–‹~®6©ÌÎvŠ=§ÀNUÒ¹p#˜Ú¢‘®ÎõA‘[˜òä!q7cèÌODh²$ÏJ5ç…°ÚPèàé¢cC©‡ƒ‚Œ·`Ff" mĞó¬Xs4˜|íë”'Œù6¦•¼Û­ne‘“õ¦XÇ#	¿øÔkŠ¢ñAü:ûÅ‹®>ö+ÉÀAzëé/)œ2{ Ø<­¡®´ídM¤ÃŒİÄûÀ‚O¥kfP;¢#\®«ê2f‡VZñŸñw…®EÕí}€Q*ÆFà«n¶2ld/¯·-tà\Ÿä7*›üÍ˜ÒbÅ‚Q«%uèÂ„ÖŒpU·óOHz‡¿ŠĞY´ƒšˆÈKã¥xF/GnïÄôEÕ¿ÿq‘Wıƒª-”{>Qş8¹+â÷(ĞâÚï—ğk1¹ÑÃhY?yš’·—´^ò=­Ü‹¯–h)¤sé>ô›œî§ˆ«¬6“GÑN,ë¥\°Ó›z)ï¹Ğ5šÊİ½4âñ ãBH&Z†ï°«£	t0Æf’ ½»è!ˆØGÓ—1gk£¨rËÊÓÈõTŠ­Wé·*UnŠU.=Bbşú²í¯àÿÃô¹„©ë ôÏw?å7õSASÙ³äê£B¦^:£—F×÷SQSY€{iLCyÅÕÇíw÷Ñ8¦C|Rz~¦oĞøO…ßÓCgâ'üÂ	=4ñå÷Ó¤&Y:¹áß‹áâ:ë¥ßâ)=4µÆë÷öĞ4ìÁtEPé÷ä/î¡³«½6e(f­æ×üøå¾B­-Á¢°¨T-:KÑº=	R°õ{¼)ºÉG©ì0ºÔ‡)¯ŸğTÅ‹X¢¯lÛïí£ÊDÌáåMHTÚÑ»	Ş5š¢Ô”û*ú©
ŒfÎê¡ÙB<»‡Î‘vjÏïë¡9‡¨ĞïKnªĞÛà©Î-Ê“U?Dó±+ü’}Í¨Ñ3Yê	–zŠåÜ†ı¹|äÔËGh)tÉIW71„¦¥—éÊeó|<³¢‡æ$\*R ß46ÑTÄx-]NÑZKW‰Ûi+uS3]M-tYH±VDY=Kíôé»´~ª÷(DR¢0 ¥NH;¸˜¢\JqG]ÜH;y#íâmÔÍt%ï¥«ø íáGi/?ßÇh?O×ñ«´Ÿß¦øº‘O7óéVş+İÆÓí9’şû=H°ndÃWékøŞI“éqz½Gl2¦A3Ã….6iSèëô$éCÎ?…¹Ğj«šõAnn¢WJ¯ÓÓ Ó ƒ½Ö‡ıÖz¿kù9z=•ó;°Ä1Iõw2Ñ{úáÖÀ¿EnG–Nå_Q=›÷'1FQ=Ÿ‘­6Ä½€ş	z1:s1"¯•¹!¦l làºJJ.-\Yäbq/XÜçÀb’ı%›»¡¹†±M‚½´ ¾¼¡âDµÛUí)ò¹BJyf×xÉÜªÉÁvæĞúıÄï/}´ˆ©¡Â[‘À’Å‚0ZräÔûe19Ö& ™¶™»ÌD[/¬ÖÃÏà7Ñwü5	q`{EG$«\ÀòúhÜT@ÓáŸ'°Ã5 x™^ÁØb@®øÌ¥8$±s½ª°Ó‡ÈŞÏIyÊyCñMú¶m×*ğšò[ı´´©¼—Î|ÖV—5ëzé¼†Š¾öÑr˜¢ŸÎ‡é.¨qW(kÔ Ãö8)½„A¼6›…Í
°QHˆŒ¿(Éäb0Y‰ÌÖl.¹şÜ—uÒK@´. Rí~€¦ø}NÓGõ`v„&LO<}êQ¿¯°á8­‚¨°ZØ¾JyŠ÷aÒ
×`ÀíÏõë}t‰Kèg" ä h”=‹v^	¥İ$é%´ÓŠ<‚OÕÇimµá!K.¼¤3µdX¡Ö«åJø™ÂËÜ/PS“hÔº=´ZHîg¶RĞÛ\x¹½)Oy“;ÁÑ^xê&„á–§S!x%K@&	ìG
—B»ÙHàÕiFšîBšJ–İ­N ôşös„Ñû—ß!„>BĞ|L'Y§· ‰ßá|z›çĞwù\ú×Ñ÷¹Şá]ô.ßJ?äWèÇü:ı„O‚KŞ¢b8)`E× ˜%ds!û1z¼5H¿¾Co#<ß§i »'1û;„ö÷ÔŠÕĞõ(ÂİK5dC”²~ORiqĞØ¸ÿ>½‹±5à¨Æ$¨“iŞè‡ù\~™~D?FøùYú	4pÑl¾ÚŞFnììú©J3Iš9hm=–Òóç U[Ö/0fóx#Åã=¤¥./Ë‰úç—h¡]ÔOWÀ™f½{Iùkä-\³²¬¶¦&4=Q˜Ôx&¦Ü Îüæõ9ìZ¤ç²üµÀ¥RÒVô&"s$¤Ğ¯ÿ y@óŸ(ÿ•Ûoh9} ¼±ÚPnı+ıöæG?ú8*u¤zïÃ¶Ëè?À#Ü…Ïé ¯èƒÖ†ú ²Gé·	m‡ed×'Êë'–¸ªİEî‰Ñ®@‘{vG!«'Q‹øû©µ©°-‘ ÆãÔŞKAT8’äÛ’óÛ³çRH,ÓÑCáÃ	šH6Í~7 ûÆ~ZÜ$¥g/uÖø¤ã÷¤ŠT*»•^î@Ş/Õ4ß?Ñhú3 ıCšOm>¢Ëèo("şN{0w-Œr3=Î81ØEÏã¨IBûh”GÕ1›ƒhÏA¯‚vì|¥‚v7„*®İ8§¥ ıD
ÚO$ ıøWr"'ß‡LùïÄéX…V<#v?UgW§‹úaˆÅÿK¿wXìÊ.ÒÿÁQrÎğ$ÿıÑa1C2ìõ§Ô­¨ZÍ?ƒvôPXî>Bn×3TV;Nñg(ô´ª!Š„jäÈ<ôş¬$}ˆ¬ŒE]¸¯‰b¢İ;[7Ú+Ñ.C{Ú=h÷‚ÇgĞ^­ü¸ƒö¹uºíuŸ„v?ÚÏ¢½óEh?‡ö´7ºsè ÚÏƒş&´7ƒnĞôoî? PK
   
²•G_>Ò£  )  3   org/gradle/cli/CommandLineParser$AfterOptions.class­•mOÓPÇÿ·ëè(ˆÏ‚@”¡¢ˆ1Q|ÉDt‰¼1wkÕ®5wEñ#ø]|!‰J¢‰Àe<·«£²‘‚1MzÏ9÷Üß9çŞsÛŸ¿¾ı PÆŠÓ²˜é'IW1«!y&T”U,2äê~³É=«âx6ÃxÅ³!¸åÚfİuÌ'\´lkußg…!sËñœà6Ãät²ûL•!½ê[/HÃúv³f‹§¼æ’e¸â×¹[åÂ‘zdL[N‹!çe`‹ÇoÇ÷¤ºæy¶Xuy«e“jŒ‹&!&âë)ëb“¿¯ÙAÛÈ02]yÅßrÓå^ÃÜ„ã5Vf6R\4dr]“¾C¨¸Â0Ô–ÛQi2 6{{ÄJ.¢‹-÷ßòÏùŞºïı©&÷Ww{Õ–/IÅU0¬á˜“Éå°”ù*3Le	ƒ¶áo‹ºıÀ‘­1Úå3/‹Ì#‡¼|]Ë£šŠ%†åDú3ïµç¿ózœŞØaS2Æu7òXÆM†¹cõ Ãìq¶ŸañøİA78yW¦ºNô°ó*%ù1|èÕëÿ¡aâ­ø¯évÅ¥Ì-ëşN x•»Ûö!*JôÅÌB¶ÿ°ì)’ú È>#Ë iIShÌélŠn|Aj—TƒôDŠVÖĞÇêĞ˜…ÙFÛî(âJËè9‰‘ºD£ôRR;¬ä%ÜŠ1”C!Ë©1†³ã­ è(|Gú¹¡FJfØ÷é °Km×°¥t$…äó¸¡ïF5k’j|EFß§jr†	dY+–ªÖ!kmrQ>ñî‘ŒŸÑ=°İ¾ˆe˜ép2¸n›”&0ft9\9E'ètN*‘×iÏ¤åĞÀK4¢˜¥ 9h¿PK
   
²•GGÑfì’  œ  3   org/gradle/cli/CommandLineParser$OptionString.class•SíNA=Ó¶”µ]Ê—(š‚UÚ-e)â'ˆÆ#ÿíX–lw›İÅè£øş•D ÑÄğ¡Œw¦+BÛøsçŞ;sî=çÎÌï??~¨âÙ ® ”&c¦‘AY†s)TÒ˜‡¥a!eiªÒ,¦pW]Òp_Ã†8÷›¹µ=ş‘[w›ÖfèÛns™aÀk‡¶ç’³b»v¸Ê0[ì=×›)m1$j^C0d×lW¬ï·v„ÿ–ï8BvòêÜÙâ¾-ã(™wí€AßP;e(|åºÂ¯9<íZkß´š>o8Âª;¶UóZ-î6d‹7Ü„_8'™¦_ØAÛáŸ×y‹úŒKı„¦B¯ãkxÈ †×Òy>ŸªšEìÓ‚4Ui
Á1ñz]A¡º´@ğZñ’êû
Mozû~]¼´åĞÇ{*ÌKˆa:r‘æ‘,b^©hx¬c+İ¥ŸïÛNCø:`UÇL1°Šë˜Òğ”¡r)êÆÿú;{¢2Ìœ?3zËE9n£›éBî‡Á;;Üeës¹¥÷ôÊy»-ÜÑíw 'i¦©æÏã†<ı¸ıÖM”ÆI^NN™Ö¤ÊĞ›¥h›¢8­Yóq³|ˆ„9wv  c
– ÷9„Ó1È¨(Ë`œòù¸(O¶aÊ“bäÓmDm>¨X1¿#‘Kaà¦~BÛ>FJ†ƒ”g´!ı“ÿ6†Îl|;á4 k±aÅCïÔx0ù¢­r/iAïŸ';`CŠÍGà’GÂ¡™å¹cÄºàš‚›#'3Ğ0Í@ÃŒšôn¡€¸‘ÂmÜéaFâº™ig˜M«Ò1Ì*[Ä¤º’İî=\E7i…‘úPK
   
²•Gx&âT`    ;   org/gradle/cli/AbstractPropertiesCommandLineConverter.class­V[wUşL2™æ‚¡5&­I­¶i-4JÓÔ`ÉE©‰i+v€	™fpfˆDÿƒï®å{_ëm\KWŸışuŸ d°¥YÂâ\öÙgïoûœ}øã¯_p?H8‡Û"–%œÅŞ¬H¸‹O%¬"Í§ŸñÑ=	¬IXÇÆ6ñù¾@–7÷ğ¥¶°=„q|Å';¼y â!ßÿHÄ×"rş¤¦köƒ7Ùb–¢Ê0’Ñtu½VÉ«æ}%_&I c”ò–bj|Ş
öf1\Ïf)^2•bYÊZ<•·lS)Ø›¦QUM[S­e£RQô"7»lè$TÍÃXI=V:Ü¨Úš¡3Œ‡#™}å@‰—½ÏÚ¦¦—HuÂ¥zGµ­¬¦z¬YSkY,ú®Vª™9>	¶Ú¦bZ„‹á¯:c†Ù×ë“¶Ñrõ*í&2ÒM
n»Ğ8&‹»M2j¶V¯)ÕDäÄœ2W5(	,MIz¢n)åšºR¯šªe9½ØôhsÄt‡©4%D±ŒØÆêƒTmg™œ“èÎvœÃêñá¹Ö­štÃtK–¸¿•zAm"ñe7«•tÅv²ûãóÙ§ÛÈ)Á®öÈÙ¹‘ßWv"âQÊê—ys¥;£íåâ]Â^W/yªpö³FÍ,¨w5Âh}Û’ñ6&FOÚ•ñ.¦eÌ`ZÄcïC‘—Q@QÆ,_Q±+¢ÄWöDh2öñDDYFºCFßÊ0Á¯À-6jq€ïdÔqÈ›ïÎtÅ+#‚y:§*[ö0íÖîĞJ™¥ZEÕíö‰f˜~]µ¡r~èÎN¤ŸÂó
ãÇÕWŞS¬cXDé\¸/ÃÃ´««ä.†ÿ'ˆ®ëÂìÇ¶k_ÛÃÅş4©°Ğ«âTSâ!î¬ ÍâWn¸[Â0 µª(•½®Õ5à–RÉ%şÖÕºí<ÃèaÕI÷SØ¾ê¢¦ÕúÆ.C°iş$Ôhû°{wŸÅfĞªñCMöx(étÏ'9î%fèÿÅ9ğÆo=µïĞ,N=İMøæŸƒıB&©õ;Â ¦Àï­£€ó¸ /N?ÓêgyO:ïa®e´JÚ^ê/F}¿Á³ãoÀ›İ¨²øÖbø×b4Øş×k µ“tŠ¾ç"ÁtÓZ3
Ñ‘ŞU 0íf¼x÷ş'y÷SŸ‹r¿6 aˆaıÒd†Ÿ°Bƒ3/á¹)LáF}AßÏ‹Ñtôc^l?Å$Í¼A_	!è7ğVkéï±gäÁë ¾@”‚ØÄÂ‡ÄCŠğí²G„‹G°Dˆ¥oŒĞ…p—h.`÷(—øríørôoó‡õY»Jñ]kçKIrÆInà#‡¿›£)ò• ç`•,r›Ò|4öãŸõÌm“Y©íYB²åYÂ-BİéÇÓòô1>qúÔ?PK
   
²•G“¼¼     ,   org/gradle/cli/ParsedCommandLineOption.classS[OAş¶·-í"¥\A(¡-ÊŠ¼P«1!iÄ¤ƒoC;Y†lw›İ-
Ï&¾ø ‰JD}öGÏì.¥I|™9ûï|ß93¿ÿ|ÿ`+)dPPQL!‚Bú0Ÿ¢å†Š›I,¤€Æ-,&q[~ï¨¸+¿÷ä²¤â¾Š
{ÌlqWA¦²Ëö˜Şò„©W„ë-+è©
Ãb^Ëá
fº~—‚³É,C¯z°Œå2¥$JÂ^YA4_ØT[µë”ÜWÑjlsçÛ6)’­Ø5fn2GÈsŒy;‚”ä+¶cè†Ãê&×k¦Ğ_2ÇåõU»Ñ`V]Rm4=a[T.ipoSP0˜/œ—DNDœ=tšœ=¼ÀZšÕë+ÑjpËS0”?’“¬ÉşKOr‡¹¡bjÑ©ªİrjü¹»Àê‚dÒ0„a§jW‡íKÉú‘Õp³
&N«®›&7˜Yõ˜Ç×ŞÖ¸ÏEˆ€4W·¹›³l/·ÃöxYû9ÿ2,ÈBS*jx’<ÂIy®Ñ2=Ñ4y€t	ZÂcº<İN5”ñDÃS)höÿÆy†ec{—×¨‡—Î†îˆ+Ş½[§•†+G±Ş9ú •tGi`]ƒ
ÿÉ¾«Â]k4½}LÒ›ÉĞƒ¢É.Òw€N"N{j9­—)RF”v@¦x¥xŒÈÖ!¢_ûì£¯Ğ*ß!(#F9#´Ó<®bÔçÃµ«r-¿!~€Şc$¶²ê!’?‹_;B}†S'áèÒü‚ö©]q˜4‚j©T£ŸøÇ©BÕ—ÚÕÇ)ñ«ët’ÿâ’õ”,á§;’ãarĞÅ&1ZxFiW“$óGèàuw+æ&9#¾PòÉİ4f|tgCÆR(+ôà’‚¨±düc—ÆùÙ¶Á9•ÿPK
   
²•G¶À°s˜  ª  =   org/gradle/cli/CommandLineParser$OptionAwareParserState.class­UíNQ=·]ºív±¡~àbº
5È§
1$šÔ4Á·íZ·»æîÖGñ	üãMD$>€eœ[–ZÒšEâŸÎÎÌ™s¦wæîşüõı€y¬'Ä:²òiB£Ÿ›&1¥!CÅ´3*f5$0§b^E‘!Ys›MîÔK–c2Œ—\Ñ(4¯Ûf¡f[…Ç\xf}óf•!æ?·¼ì\t®]($zÍr,ÿ.ÃÃ©px¸|®Â lºuj6%;­fÕOxÕ¦ÈPÉ­q»Â…%ı ¨Èv2^ú–ël¼æ"P+ûÜ§¼¾í8¦Ø´¹ç™„[í2ÛŸ‰şkºÉßVMò„ˆa™*íñW¼`s§Q(ûÂr«¹§Q.²á$Äuv\çˆ y¬ÙûıèÂ;>Ş¦Vv[¢fnYòx2=èY© #…´³XĞ1ˆ3:ncTÅ¢%,«XÑ±Š5†…Påg¾)¶,áùåV5H3÷Kµ;3'ã<<˜ŞíJÚµÅSÎ!ÿ/g©â&ÃW;;ß^İ¸åv,l×y½şà/x…Û-ó/ËTé¥êQ§™óZÍô¼ìÂ]Ü‰\E¹¤/şË•=éÙl÷¨k<§ŒÑR§wgÃrÅtZ.=E¢Ph†h²çÈ+"J6mLïƒì+"F~ÑOA-¨–ò,Í Åf1B±å¨†ìE ı$5"Äy	£ó
ù3¦¿@ùĞá‹A®U±‹'Öá‰á2®Pá*Æ=´QEã3¢D5@–}Cì2Pw¥'3Ôyü=RHì®ö±£©I¶ˆ8[êÒ-vt‹n×Û5ã¸@Ö å$}_Î+:Ë®)ò+“C	²â½EéøoPK
   
²•G'H  g  )   org/gradle/cli/CommandLineConverter.classQMKÃ@}ÓÖÆÔ¯ª'Ï"4
F¯M)HQ
	Ş·éºlI7²İ”ş6ş ”¸M¡“B–y³ï½aæç÷ëÀ=Îtœœ$S®¡ß§lÁü”)á¿®Ù8åA	{Oyb¯
:Ë„™©¹ƒ3‚I¡˜É5'ÜÕ	JXd´T"qxö{a¦…/4›¤ÜORé¿1=ç“Q6›15	¥Ú¹³ë¤6¾®Æ‡EÛWb‰RhèÀ{'ôq¿j<¬R”å:áO2µú%¹Ñz	\ß®X„ËíÎ›¯„îÂÍvâƒùŒ+³ÙT›@h`uš-B-›íÙ¬eñ65°_TÜšJÇVpXÄkäÇÅ{òPK
   
²•GCÑæê  |  <   org/gradle/cli/CommandLineParser$BeforeFirstSubCommand.classÅVmSW~n²pq³hH•¶ØHƒ@^A«@‰m”6Ø·MXÓÕd×Ùlª¡?¡ÿÂÎ´ƒ–©ö[gú¥ÿ£?¢Óswc&°Áq¦_îË¹Ï=ç¹Ï{öşõïo/ ¤q_ÆYÌ¢f^Fse,àZ K¸Îñ‰˜,s¬Ø2V9Ö°ÎqSÆ>•1ˆMœŒ¶8ò·úíïõzt†a,gZ•TÅRw«Zª\ÕSY³VSİœnh·U«®YB/ê†n/1¬OzÃ_G8æİ6\fj›AÊš»ÃaØjÔJšuG-UÉÊ™eµº­Zº˜7’ Ë^Ñî›–¶¦[u»Ğ(5}2(†¡YÙªZ¯k›ó$íêˆN(@»ˆÓy†AÓ(ØªeçÙºip|Î0äİX´h“¯ÉÜõ5UUJª`[ºQÉtZ¦¼©wø&~Õªé:üÑ·3<‰äÜšæMS½n9j“*ßŒq\6¹˜GßJ*y³N;éæ{2#š´hf¢½ìcfÃ*SšˆîÀL¹œÃˆ‚a¼Ëq‡!y"Åæ»
¶ñÇ—
ŠØaˆxI¨à¾b˜÷Œt×xh˜.Éxî¨%0&X}Ë?:À²UiÔ4Ã^}RÖšŸşBÓe¤™É*á"nÎE&ÆëÓÁƒüÌ—he›ã;*J"b™áªç‘68Ğp÷á—êÃ•7«½rC.?V-í0¡£fO~Áé^y§ë±‰ã‚6{*B½^*Y-—µz=:7C—ëR÷yÊÕ°õjê–úHÏC*dÍf¸ØNÓÍ”W{ÛMæƒñ^ìpCêşØM•·PzÚkt¯š_gBœR³¦’,ó]xŞ;^©VµwÙ+âıóeØã×àıø¿ÄMœÄ+"ô 
Ó;Œƒ¢¼ÓÈŸ¨öô÷zf7iî§^‰Å…/OìÁÿ3Í}xŸÚÓb]C[B€]Çd¦5Âc”|ÃQµ%ÃG¸Øôú7ĞG½¶©O°=ômÅ~ïúÏÁ}øÒˆô'Ò®ùÔOíC.Æiˆ^yºÁbè´ô;ÎıÉÂ3÷0ôr¡¢Ø‘‘^!ßyÚ¢{œèf‰êŒ²UŒ±5$Ø:2lƒŞ‹9‡şe—X‹¾†	Lm1š¢‘ì †}”äIbR$Yºy¸<­HÔsG-v V¿pÃ01Ò
Ã1Kê3gtÉÑKŒ.ãcç{\q|\Å‡Ô¯vgé9|,QêÇ%ñ\^@œ^Å)ê€x.g!Ã¸E¸0õŸI>|Mı7’üPK
   
²•G“ ;™|  ü  9   org/gradle/cli/SystemPropertiesCommandLineConverter.class’ËJÃ@†ÏØ«mµ¶ÖjÕEÜ5BDÄ…R/Pé~šÓ‘$&ÓBŞJW‚À‡'i©AÄYœ3óÏÿÍœ¹¼¼¾Àl— "l¡Y„Íl E Ê<&Ï	dÚú@¶ËÇH ÚgŞLİŠ{:r”Rïs‹:C*X4NÄ¬œ°€ÀQŸÛ´;hZ3a Ñ½ÜG!]îºÔG‹v¹7S"Š5eb
o}É¸G ÑÖûtFM‡z¶9‚y¶²¶~X{()spL`7e.°KV,øTXxÉ¢Šõ¿”fDT  E¤G ÄPÇWãJm®h~²­Æ49Aíjx­µÑ°­ÓsÃhöÌgÔ™¢n8üÇ5©Û] .FÔ’¿s°9õàQË‰Î¢â²™*•sû/@Ug	J*æc±e+sƒÊ+1¾
Õî$p¦¾ô´€6¿¡™/t-Í,¢;©h-Í.¢Z
ª>kìZÿPK
   
²•G-h‚  »  2   org/gradle/cli/CommandLineParser$ParserState.class•SßoÒPşN)sÀÜT4706ê|3M$š˜m	f{»@Ãº”[sÛ-ú?ùâ‹&>øøGÏmÙdƒiÒ÷œï|çœÛß~şp ÇFÛ62ØÎ¢jãv,Ô-4™Wô¢×„T½qB0;ÁĞ%¬v=é^Œû®ú(ú>{Jİ` ü¡<mOœftæ…„Ü±P¡«z‘ˆØ™ÿ ¥«:¾C—[İ@œ‘Cßu¾çt‚ñXÈ¡®äU§ÒÛ„ÂX|é»l©èèSä’°^ï‹KáøBœ^¤<9j7N	Y/¼
I	5Ò,gâ+œB³°K(&úŞ§sŠÌ)»¸læäa ¯È¾×ÏÒs
äTÈ;9´Ğ$€P«/†:hëmŸŸªÿM°{Á…¸ï=½ø™˜–n(Y‚U6ö[M{yì£h¡EØ[¦=îîß€úçî "¼X~ò„­ÅÍİ(–lƒ{‹hp¦/pe‚Yá¿+ıX0ôx	wØrXòFŞıã+lşf´“ÊÈ±OX®&3A1*±L@Úœehèf)õæ×[0›1ÌF’ÀÄÚîpbà‡(C_G×ìš±Íïmf;SÌ(,hÈÍIâK–Æ¤­™äòŸô5Ÿ4 §=ã·p—e)>©aÅ´9£†û,³D!ûPK
   
²•GF¶÷=  Ê	  ;   org/gradle/cli/CommandLineParser$AfterFirstSubCommand.classÅVëRÓPşN[¤JÄ;be -´°x)U.R(XEÑ_¡Ä(	“ñ| ßgtP™qüçŒâC8îI
K›Â0ãŸ³{v÷|gw³»9¿ş|û †EÍˆ4ÒÑ‚ˆH²A/†pKÀ°€Û\3*BÀ˜€;ÆExqO„ˆûH0Ô›oÔB ÊĞÒ\$gÈ«y%’Í«‘¤¾±!k«)USd£ q²W5Õ¼Ç0Õëlş¯…%^-±‹÷-1x’úªÂĞÂó[+ŠñT^É“ÄŸÒ³r~I6T¾/
=Ü]†¶ÄkS1&U£`f¶VŠÒŒ¦)F2/

Y8ú8‡âôf-IMy$Mº–1eÃLošª®	H2´Ú¼})MÂzÙ›Z“ßÊ‘¼¬å"ÓPµ\¼\Òçìy6ùà–O\}9İ²'§JBKeÕ¾½mğëgòáÃ‹YÅázåKŒ/ƒZÎ1ˆ}ËÈ*“*¯˜2›	~œ“àC«€G&1%`ZÂ3t9eƒaÌÑ‘gÚº¦okÇ”@g%•„K¸Ì›£Úu¼`¶|G%E5e×uSé–»5Ï—4Ãğ©Úª–˜ìÛ²¡©’bğä}Båî\EU‹À6¢:“³Y¥PŒF©J‡jhŒ>»3·L5™“7ùÔ8" Î)&COéH¯¬)Ysÿl©HÀª#¡½?n¼œA;–Î™Z›w¶¦QW+ÚïSê^Í¼8õşWêÂ'AEıå[è=À|>>ĞˆsÃÅçÍë6ÚMÓŞMT
†>Ã…wáşH{Úimæ:¶ˆ:ö^–AÉ:HGö8‹€ÅÑd"ÃºÍFı€xˆ&‚ŸàúOø+ê\øúùşŸğïAX‘¦!ÈvÑ¸³q™ÛíÁ»
“HêßW6í¸âç€ì9ZÙ´³eØ+Ë }Ñ;	\G7¹Á¹Ä¹(è(¸	·£ô]LShü¤`ÅÌc®ç‡ÙB	¸p . à˜Å­¨9BØÊj¿…1€D'(Íôâê$ÉU¢×<"zˆÂ×@'bjÅ'½—è]ğGZf‰¦<â_PK
   
²•GiŞ} F   D      gradle-cli-classpath.propertiesSÎÍO)ÍIUHIMËÌË,ÉÌÏãRöÍÏSpIMV02T02²24³22PpvQ0204å*(ÊÏJM.)¶å**Í+ÉÌMµå PK
   *²•G           	          íA    META-INF/PK
   *²•G×•˜R?   U              ¤)   META-INF/MANIFEST.MFPK
   ²•G                     ıAš   org/PK
   ²•G                     ıA¾   org/gradle/PK
   ²•G                     ıAé   org/gradle/wrapper/PK
   ²•Gh‚df£   Õ   #           ´  org/gradle/wrapper/Download$1.classPK
   ²•GÅŞ…Ö  p  D           ´   org/gradle/wrapper/Download$SystemPropertiesProxyAuthenticator.classPK
   ²•GçìXsª   Û   "           ´v  org/gradle/wrapper/IDownload.classPK
   ²•G©zİ\  Q  -           ´`  org/gradle/wrapper/GradleUserHomeLookup.classPK
   ²•Gâ]ÛÅ  ú
  3           ´  org/gradle/wrapper/ExclusiveFileAccessManager.classPK
   ²•GÌ^F‘  ù  -           ´  org/gradle/wrapper/WrapperConfiguration.classPK
   ²•GQ}iå  
  0           ´ù  org/gradle/wrapper/SystemPropertiesHandler.classPK
   ²•G¥y0ºV                ´,  org/gradle/wrapper/Logger.classPK
   ²•GÎrëŠ  n  &           ´¿  org/gradle/wrapper/PathAssembler.classPK
   ²•G8Ş¶İ  ì)              ´   org/gradle/wrapper/Install.classPK
   ²•GİÀL‰Ä  •	  -           ´q3  org/gradle/wrapper/BootstrapMainStarter.classPK
   ²•GHÖ·$Ó
  #  (           ´€8  org/gradle/wrapper/WrapperExecutor.classPK
   ²•G„¤«²
  B  *           ´™C  org/gradle/wrapper/GradleWrapperMain.classPK
   ²•GÙÎx   ´  "           ´“N  org/gradle/wrapper/Install$1.classPK
   ²•Gj j´  V  8           ´sU  org/gradle/wrapper/PathAssembler$LocalDistribution.classPK
   ²•G’cJ  K  !           ´}W  org/gradle/wrapper/Download.classPK
   ²•GÀ>ÆP   N   #           ´Õ_  gradle-wrapper-classpath.propertiesPK
   
²•G$Ù–eÎ                ´f`  build-receipt.propertiesPK
   
²•G                     ıAja  org/gradle/cli/PK
   
²•GÈô–<  S  1           ´™a  org/gradle/cli/AbstractCommandLineConverter.classPK
   
²•G2_e¦   è   (           ´$d  org/gradle/cli/CommandLineParser$1.classPK
   
²•GRB	¨  ÷  <           ´e  org/gradle/cli/CommandLineParser$MissingOptionArgState.classPK
   
²•G¼¬M2‘  ƒ  =           ´h  org/gradle/cli/CommandLineParser$OptionStringComparator.classPK
   
²•Gè#òG  K  1           ´şj  org/gradle/cli/CommandLineArgumentException.classPK
   
²•G?hÿÇ  ‡  =           ´”l  org/gradle/cli/CommandLineParser$KnownOptionParserState.classPK
   
²•Gk±Í  Û  7           ´¶t  org/gradle/cli/CommandLineParser$OptionComparator.classPK
   
²•GäbÕ'á  n  ?           ´Øw  org/gradle/cli/CommandLineParser$UnknownOptionParserState.classPK
   
²•G"zÉZ’  ™  &           ´{  org/gradle/cli/CommandLineOption.classPK
   
²•Gœl\Ï§  ¦  8           ´ì€  org/gradle/cli/CommandLineParser$OptionParserState.classPK
   
²•G[xn˜”  Ç  &           ´é‚  org/gradle/cli/ParsedCommandLine.classPK
   
²•G‹A5l|    :           ´ÁŠ  org/gradle/cli/ProjectPropertiesCommandLineConverter.classPK
   
²•G2lW¶J    F           ´•Œ  org/gradle/cli/CommandLineParser$CaseInsensitiveStringComparator.classPK
   
²•G…¥´g  Æ*  &           ´C  org/gradle/cli/CommandLineParser.classPK
   
²•G_>Ò£  )  3           ´î¡  org/gradle/cli/CommandLineParser$AfterOptions.classPK
   
²•GGÑfì’  œ  3           ´â¤  org/gradle/cli/CommandLineParser$OptionString.classPK
   
²•Gx&âT`    ;           ´Å§  org/gradle/cli/AbstractPropertiesCommandLineConverter.classPK
   
²•G“¼¼     ,           ´~¬  org/gradle/cli/ParsedCommandLineOption.classPK
   
²•G¶À°s˜  ª  =           ´„¯  org/gradle/cli/CommandLineParser$OptionAwareParserState.classPK
   
²•G'H  g  )           ´w²  org/gradle/cli/CommandLineConverter.classPK
   
²•GCÑæê  |  <           ´×³  org/gradle/cli/CommandLineParser$BeforeFirstSubCommand.classPK
   
²•G“ ;™|  ü  9           ´¸  org/gradle/cli/SystemPropertiesCommandLineConverter.classPK
   
²•G-h‚  »  2           ´î¹  org/gradle/cli/CommandLineParser$ParserState.classPK
   
²•GF¶÷=  Ê	  ;           ´E¼  org/gradle/cli/CommandLineParser$AfterFirstSubCommand.classPK
   
²•GiŞ} F   D              ´Û¿  gradle-cli-classpath.propertiesPK    1 1   ^À    ```
### Fim do arquivo: ./android/gradle/wrapper/gradle-wrapper.jar
---
### InÃ­cio do arquivo: ./android/gradle/wrapper/gradle-wrapper.properties
```
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
distributionUrl=https\://services.gradle.org/distributions/gradle-8.4-all.zip```
### Fim do arquivo: ./android/gradle/wrapper/gradle-wrapper.properties
---
### InÃ­cio do arquivo: ./android/gradlew
```
#!/usr/bin/env bash

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

warn ( ) {
    echo "$*"
}

die ( ) {
    echo
    echo "$*"
    echo
    exit 1
}

# OS specific support (must be 'true' or 'false').
cygwin=false
msys=false
darwin=false
case "`uname`" in
  CYGWIN* )
    cygwin=true
    ;;
  Darwin* )
    darwin=true
    ;;
  MINGW* )
    msys=true
    ;;
esac

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`/" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
fi

# Increase the maximum file descriptors if we can.
if [ "$cygwin" = "false" -a "$darwin" = "false" ] ; then
    MAX_FD_LIMIT=`ulimit -H -n`
    if [ $? -eq 0 ] ; then
        if [ "$MAX_FD" = "maximum" -o "$MAX_FD" = "max" ] ; then
            MAX_FD="$MAX_FD_LIMIT"
        fi
        ulimit -n $MAX_FD
        if [ $? -ne 0 ] ; then
            warn "Could not set maximum file descriptor limit: $MAX_FD"
        fi
    else
        warn "Could not query maximum file descriptor limit: $MAX_FD_LIMIT"
    fi
fi

# For Darwin, add options to specify how the application appears in the dock
if $darwin; then
    GRADLE_OPTS="$GRADLE_OPTS \"-Xdock:name=$APP_NAME\" \"-Xdock:icon=$APP_HOME/media/gradle.icns\""
fi

# For Cygwin, switch paths to Windows format before running java
if $cygwin ; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"`
    JAVACMD=`cygpath --unix "$JAVACMD"`

    # We build the pattern for arguments to be converted via cygpath
    ROOTDIRSRAW=`find -L / -maxdepth 1 -mindepth 1 -type d 2>/dev/null`
    SEP=""
    for dir in $ROOTDIRSRAW ; do
        ROOTDIRS="$ROOTDIRS$SEP$dir"
        SEP="|"
    done
    OURCYGPATTERN="(^($ROOTDIRS))"
    # Add a user-defined pattern to the cygpath arguments
    if [ "$GRADLE_CYGPATTERN" != "" ] ; then
        OURCYGPATTERN="$OURCYGPATTERN|($GRADLE_CYGPATTERN)"
    fi
    # Now convert the arguments - kludge to limit ourselves to /bin/sh
    i=0
    for arg in "$@" ; do
        CHECK=`echo "$arg"|egrep -c "$OURCYGPATTERN" -`
        CHECK2=`echo "$arg"|egrep -c "^-"`                                 ### Determine if an option

        if [ $CHECK -ne 0 ] && [ $CHECK2 -eq 0 ] ; then                    ### Added a condition
            eval `echo args$i`=`cygpath --path --ignore --mixed "$arg"`
        else
            eval `echo args$i`="\"$arg\""
        fi
        i=$((i+1))
    done
    case $i in
        (0) set -- ;;
        (1) set -- "$args0" ;;
        (2) set -- "$args0" "$args1" ;;
        (3) set -- "$args0" "$args1" "$args2" ;;
        (4) set -- "$args0" "$args1" "$args2" "$args3" ;;
        (5) set -- "$args0" "$args1" "$args2" "$args3" "$args4" ;;
        (6) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" ;;
        (7) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" ;;
        (8) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" ;;
        (9) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" "$args8" ;;
    esac
fi

# Split up the JVM_OPTS And GRADLE_OPTS values into an array, following the shell quoting and substitution rules
function splitJvmOpts() {
    JVM_OPTS=("$@")
}
eval splitJvmOpts $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS
JVM_OPTS[${#JVM_OPTS[*]}]="-Dorg.gradle.appname=$APP_BASE_NAME"

exec "$JAVACMD" "${JVM_OPTS[@]}" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
```
### Fim do arquivo: ./android/gradlew
---
### InÃ­cio do arquivo: ./android/gradlew.bat
```
@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Gradle startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

@rem Execute Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GRADLE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GRADLE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
```
### Fim do arquivo: ./android/gradlew.bat
---
### InÃ­cio do arquivo: ./android/lamafiacla_android.iml
```
<?xml version="1.0" encoding="UTF-8"?>
<module type="JAVA_MODULE" version="4">
  <component name="FacetManager">
    <facet type="android" name="Android">
      <configuration>
        <option name="ALLOW_USER_CONFIGURATION" value="false" />
        <option name="GEN_FOLDER_RELATIVE_PATH_APT" value="/gen" />
        <option name="GEN_FOLDER_RELATIVE_PATH_AIDL" value="/gen" />
        <option name="MANIFEST_FILE_RELATIVE_PATH" value="/app/src/main/AndroidManifest.xml" />
        <option name="RES_FOLDER_RELATIVE_PATH" value="/app/src/main/res" />
        <option name="ASSETS_FOLDER_RELATIVE_PATH" value="/app/src/main/assets" />
        <option name="LIBS_FOLDER_RELATIVE_PATH" value="/app/src/main/libs" />
        <option name="PROGUARD_LOGS_FOLDER_RELATIVE_PATH" value="/app/src/main/proguard_logs" />
      </configuration>
    </facet>
  </component>
  <component name="NewModuleRootManager" inherit-compiler-output="true">
    <exclude-output />
    <content url="file://$MODULE_DIR$">
      <sourceFolder url="file://$MODULE_DIR$/app/src/main/java" isTestSource="false" />
      <sourceFolder url="file://$MODULE_DIR$/app/src/main/kotlin" isTestSource="false" />
      <sourceFolder url="file://$MODULE_DIR$/gen" isTestSource="false" generated="true" />
    </content>
    <orderEntry type="jdk" jdkName="Android API 29 Platform" jdkType="Android SDK" />
    <orderEntry type="sourceFolder" forTests="false" />
    <orderEntry type="library" name="Flutter for Android" level="project" />
    <orderEntry type="library" name="KotlinJavaRuntime" level="project" />
  </component>
</module>
```
### Fim do arquivo: ./android/lamafiacla_android.iml
---
### InÃ­cio do arquivo: ./android/local.properties
```
flutter.sdk=/home/user/flutter
sdk.dir=/home/user/.androidsdkroot
flutter.buildMode=debug
flutter.versionName=2.1.0
flutter.versionCode=4```
### Fim do arquivo: ./android/local.properties
---
### InÃ­cio do arquivo: ./android/settings.gradle
```
pluginManagement {
    def flutterSdkPath = {
        def properties = new Properties()
        file("local.properties").withInputStream { properties.load(it) }
        def flutterSdkPath = properties.getProperty("flutter.sdk")
        assert flutterSdkPath != null, "flutter.sdk not set in local.properties"
        return flutterSdkPath
    }
    settings.ext.flutterSdkPath = flutterSdkPath()

    includeBuild("${settings.ext.flutterSdkPath}/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id "dev.flutter.flutter-plugin-loader" version "1.0.0"
    id "com.android.application" version "8.3.0" apply false
    id "org.jetbrains.kotlin.android" version "2.1.0" apply false
}

include ":app"
```
### Fim do arquivo: ./android/settings.gradle
---
### InÃ­cio do arquivo: ./codemagic.yaml
```
workflows:
  android-debug-build-insecure:
    name: Federacaomad Android Debug Build (google-services.json no repo)

    triggering:
      events:
        - push
      branch_patterns:
        - pattern: 'main'
          include: true

    environment:
      flutter: stable
      vars:
        JVM_ARGS: "-Xmx12g"
      groups:
        - firebase_app_check_ci

    scripts:
      - name: Configurar Flutter
        script: |
          flutter config --enable-android
          flutter doctor

      - name: Limpar cache do Flutter
        script: |
          flutter clean

      - name: Obter dependÃªncias Flutter
        script: |
          flutter pub get

      - name: Construir APK Debug
        script: |
          cd $CM_BUILD_DIR
          flutter build apk --debug

    artifacts:
      - build/app/outputs/flutter-apk/app-debug.apk

      
```
### Fim do arquivo: ./codemagic.yaml
---
### InÃ­cio do arquivo: ./devtools_options.yaml
```
description: This file stores settings for Dart & Flutter DevTools.
documentation: https://docs.flutter.dev/tools/devtools/extensions#configure-extension-enablement-states
extensions:
```
### Fim do arquivo: ./devtools_options.yaml
---
### InÃ­cio do arquivo: ./pubspec.yaml
```
name: lucasbeatsfederacao
description: 'Aplicativo FEDERACAOMAD: ComunicaÃ§Ã£o e organizaÃ§Ã£o.'
publish_to: 'none'
version: 2.1.0+4

environment:
  sdk: '>=3.3.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  
  sentry_flutter: ^9.1.0
  flutter_dotenv: ^5.0.0
  package_info_plus: ^8.0.0
  # Firebase
  firebase_core: ^3.14.0
  firebase_database: ^11.3.7
  firebase_messaging: ^15.2.7
  firebase_auth: ^5.6.0
  firebase_crashlytics: ^4.0.0
  firebase_app_check: ^0.3.2+7
  
  jitsi_meet_wrapper:
    git:
      url: https://github.com/lucasmd12/jitsi_meet_wrapper_fix.git
      path: jitsi_meet_wrapper
      ref: main
      
  # Backend Communication
  http: ^1.2.1
  socket_io_client: ^3.1.2

  # Estado e armazenamento
  provider: ^6.1.2
  shared_preferences: ^2.3.3
  connectivity_plus: ^6.1.4

  # UI e formataÃ§Ã£o
  intl: ^0.20.2
  flutter_svg: ^2.0.10+1
  
  # Melhorias de UI/UX
  flutter_chat_ui: ^1.6.15
  infinite_scroll_pagination: ^4.1.0
  flutter_slidable: ^3.1.1
  pull_to_refresh: ^2.0.0
  flutter_sound: ^9.11.3

  # Funcionalidades
  image_picker: ^1.1.2
  file_picker: ^8.1.2
  permission_handler: ^12.0.0+1
  flutter_secure_storage: ^9.2.2

  # WebRTC para VoIP (mantido para compatibilidade)
  flutter_webrtc: ^0.14.1
  uuid: ^4.4.0

  # Audio
  audioplayers: ^6.0.0

  # Cache e performance
  cached_network_image: ^3.3.1
  
  # NotificaÃ§Ãµes
  flutter_local_notifications: ^19.2.1
  just_audio: ^0.10.4
  
  # AnimaÃ§Ãµes
  flutter_animate: ^4.0.0
  animations: ^2.0.0
  # ==================== INÃCIO DA MODIFICAÃ‡ÃƒO ====================
  simple_animations: ^5.0.2 # Pacote para animaÃ§Ãµes de fundo contÃ­nuas
  # ===================== FIM DA MODIFICAÃ‡ÃƒO ======================

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0
  flutter_launcher_icons: ^0.14.3
  sentry_dart_plugin: ^3.0.0 # Adicionado para Source Maps

sentry:
  upload_debug_symbols: true
  upload_source_maps: true
  commits:
    auto: true

flutter_icons:
  android: true
  ios: true
  image_path: "assets/images_png/app_logo.png"
  adaptive_icon_background: "#000000"
  adaptive_icon_foreground: "assets/images_png/app_logo.png"

flutter:
  uses-material-design: true

  assets:
    - .env
    - assets/images_png/
    - assets/images_png/backgrounds/
    - assets/images_png/clan_images/
    - assets/audio/
    - assets/fonts/
    # ==================== INÃCIO DA MODIFICAÃ‡ÃƒO ====================
    # A linha que vocÃª adicionou ('assets/images_map/') foi removida para evitar duplicatas
    # e manter a estrutura que planejamos.
    - assets/images/backgrounds/ # Nova pasta para fundos imersivos
    - assets/images/map/         # Nova pasta para o mapa do mundo
    # ===================== FIM DA MODIFICAÃ‡ÃƒO ======================

  fonts:
    - family: Gothic
      fonts:
        - asset: assets/fonts/gothic.ttf
    - family: Digital
      fonts:
        - asset: assets/fonts/digital.ttf
```
### Fim do arquivo: ./pubspec.yaml
---
### InÃ­cio do arquivo: ./test/widget_test.dart
```
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lucasbeatsfederacao/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FEDERACAOMADApp());

    // Verificar se o app carrega sem erros
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
```
### Fim do arquivo: ./test/widget_test.dart
---
### InÃ­cio do arquivo: ./web/index.html
```
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FederaÃ§Ã£o Mad</title>
  <link rel="icon" type="image/png" href="assets/images_png/app_icon_login_splash.png">
  <style>
    body {
      margin: 0;
      padding: 0;
      background-image: url('assets/images_png/backgrounds/background_01.png');
      background-size: cover;
      background-position: center;
      font-family: 'Gothic', sans-serif;
      text-align: center;
      color: white;
      height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background-color: #1E1E2C; /* Cor de fallback caso a imagem nÃ£o carregue */
    }

    .logo {
      width: 150px;
      height: 150px;
      margin-bottom: 20px;
      border-radius: 50%;
      box-shadow: 0 0 20px rgba(145, 71, 255, 0.7);
    }

    h1 {
      margin-top: 20px;
      font-size: 2.5em;
      text-shadow: 2px 2px 5px black;
      color: #FFFFFF;
    }

    .subtitle {
      font-size: 1.2em;
      margin-bottom: 30px;
      color: #CCCCCC;
      text-shadow: 1px 1px 3px black;
    }

    .button-container {
      display: flex;
      flex-direction: column;
      gap: 15px;
      margin-top: 20px;
    }

    button {
      padding: 15px 30px;
      font-size: 1.2em;
      background-color: #9147FF;
      color: white;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      box-shadow: 2px 2px 5px rgba(0,0,0,0.5);
      transition: all 0.3s ease;
      font-family: 'Gothic', sans-serif;
      min-width: 250px;
    }

    button:hover {
      background-color: #7E3CD6;
      transform: translateY(-2px);
    }

    .footer {
      position: absolute;
      bottom: 20px;
      font-size: 0.8em;
      color: #AAAAAA;
    }

    @media (max-width: 600px) {
      h1 {
        font-size: 2em;
      }
      
      button {
        min-width: 200px;
      }
    }
  </style>
</head>
<body>
  <img src="assets/images_png/app_icon_login_splash.png" alt="FederaÃ§Ã£o Mad Logo" class="logo">
  <h1>FEDERAÃ‡ÃƒO MAD</h1>
  <p class="subtitle">ComunicaÃ§Ã£o e organizaÃ§Ã£o em tempo real</p>
  
  <div class="button-container">
    <button onclick="playSound('splash_screen_sound')">Iniciar Aplicativo</button>
    <button onclick="playSound('gun_sound_effect')">Entrar em Canal de Voz</button>
  </div>

  <div class="footer">
    &copy; 2025 FederaÃ§Ã£o Mad - Todos os direitos reservados
  </div>

  <script>
    // FunÃ§Ã£o para reproduzir sons
    function playSound(soundName) {
      const audio = new Audio();
      
      if (soundName === 'splash_screen_sound') {
        audio.src = 'assets/audio/splash_screen_sound.mp3';
      } else if (soundName === 'gun_sound_effect') {
        audio.src = 'assets/audio/gun_sound_effect.mp3';
      }
      
      audio.play().catch(error => {
        console.error('Erro ao reproduzir Ã¡udio:', error);
      });
      
      // SimulaÃ§Ã£o de carregamento do app
      if (soundName === 'splash_screen_sound') {
        setTimeout(() => {
          alert('Aplicativo mobile disponÃ­vel para download. Acesse pelo seu dispositivo Android.');
        }, 1500);
      }
    }
    
    // PrÃ©-carregamento dos sons
    document.addEventListener('DOMContentLoaded', function() {
      const sounds = [
        'assets/audio/splash_screen_sound.mp3',
        'assets/audio/gun_sound_effect.mp3'
      ];
      
      sounds.forEach(sound => {
        const audio = new Audio();
        audio.src = sound;
      });
    });
  </script>
</body>
</html>
```
### Fim do arquivo: ./web/index.html
---
### InÃ­cio do arquivo: ./saida_do_projeto.md
```
```
### Fim do arquivo: ./saida_do_projeto.md
