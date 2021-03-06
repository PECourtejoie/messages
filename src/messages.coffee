# The Messages class makes it possible to provide GuideGuide in multiple
# languages. English is used by default if a translation does not exist for the
# i18n string provided. To add a new language, add a new `when` block for the
# desired i18n string that returns the translated string. For methods that
# include dynamic data, be sure to include the dynamic data.
#
# Usage:
#   var messages = new Messages "en_us"
#   console.log messages.makeGrid()
#   # Make grid
#
# Styleguide
#   - Use sentence case for titles.
#
class Messages

  # Create a Messages object and set the language to be used.
  #
  #   locale - locale code for language of choice
  #
  # Currently supported locales:
  #   - English: en_us
  #       credit: https://github.com/cameronmcefee
  #   - Spanish: es_es
  #       credit: https://github.com/bomberstudios
  #
  constructor: (locale) ->
    @i18n = locale if locale?

  #
  # UI Messages
  # These messages are generally titles and button labels.
  #

  uiGrid: =>
    switch @i18n
      when "es_es"
        "Retícula"
      else
        "Grid"

  uiCustom: =>
    switch @i18n
      when "es_es"
        "Personalizada"
      else
        "Custom"

  uiSets: =>
    switch @i18n
      when "es_es"
        "Sets"
      else
        "Sets"

  uiDebug: =>
    switch @i18n
      when "es_es"
        "Debug"
      else
        "Debug"

  uiMakeGrid: =>
    switch @i18n
      when "es_es"
        "Crear retícula"
      else
        "Make grid"

  uiSaveSet: =>
    switch @i18n
      when "es_es"
        "Guardar set"
      else
        "Save set"

  uiImportSets: =>
    switch @i18n
      when "es_es"
        "Importar sets"
      else
        "Import sets"

  uiExportSets: =>
    switch @i18n
      when "es_es"
        "Exportar sets"
      else
        "Export sets"

  uiColumnMidpoint: =>
    "Column midpoint"

  uiRowMidpoint: =>
    "Row midpoint"

  uiGutterMidpoint: =>
    "Gutter midpoint"

  uiOk: =>
    switch @i18n
      when "es_es"
        "Ok"
      else
        "Ok"

  uiCancel: =>
    switch @i18n
      when "es_es"
        "Cancelar"
      else
        "Cancel"

  uiDonate: =>
    switch @i18n
      when "es_es"
        "Donar"
      else
        "Donate"

  uiCheckForUpdates: =>
    switch @i18n
      when "es_es"
        "Buscar actualizaciones"
      else
        "Check for updates"

  uiShowLogs: =>
    switch @i18n
      when "es_es"
        "Mostrar logs"
      else
        "Show logs"

  uiHorizontalPosition: =>
    switch @i18n
      when "es_es"
        "Posición horizontal"
      else
        "Horizontal position"

  uiVerticalPosition: =>
    switch @i18n
      when "es_es"
        "Posición vertical"
      else
        "Vertical position"

  uiHorizontalRemainder: =>
    switch @i18n
      when "es_es"
        "Resto horizontal"
      else
        "Horizontal remainder"

  uiVerticalRemainder: =>
    switch @i18n
      when "es_es"
        "Resto vertical"
      else
        "Vertical remainder"

  uiHorizontalFirst: =>
    switch @i18n
      when "es_es"
        "Izquierda"
      else
        "Left"

  uiHorizontalCenter: =>
    switch @i18n
      when "es_es"
        "Centro"
      else
        "Center"

  uiHorizontalLast: =>
    switch @i18n
      when "es_es"
        "Derecha"
      else
        "Right"

  uiVerticalFirst: =>
    switch @i18n
      when "es_es"
        "Arriba"
      else
        "Top"

  uiVerticalCenter: =>
    switch @i18n
      when "es_es"
        "Centro"
      else
        "Center"

  uiVerticalLast: =>
    switch @i18n
      when "es_es"
        "Abajo"
      else
        "Bottom"

  uiNiceNo: =>
    switch @i18n
      when "es_es"
        "No, gracias"
      else
        "No thanks"

  uiOpenInBrowser: =>
    switch @i18n
      when "es_es"
        "Abrir en navegador"
      else
        "Open in browser"

  #
  # Help Messages
  # These are essentially tooltips. They appear in the UI to explain features.
  #

  helpImportDesc: =>
    switch @i18n
      when "es_es"
        "Importa sets pegando una url de GitHub Gist en el campo de texto de
        abajo."
      else
        "Import sets by pasting a GitHub Gist url in the text field below."

  helpGistExport: =>
    switch @i18n
      when "es_es"
        'Estos son los datos de un set de guías exportado por el plugin
        GuideGuide. Para importarlos, haz click en el botón "Importar" en los
        ajustes de GuideGuide y pega la url de este Gist en el campo de texto.'
      else
        'This is guide set data exported by the GuideGuide plugin. To import
        them, click the "Import" button in the GuideGuide settings and paste
        this Gist url into the text field.'

  #
  # Alert Messages
  # These are titles and messages for alert dialogues.
  #

  alertTitleUpToDate: =>
    switch @i18n
      when "es_es"
        "Estás al día"
      else
        "Up to date"

  alertMessageUpToDate: =>
    switch @i18n
      when "es_es"
        "Ya tienes la última versión de GuideGuide."
      else
        "GuideGuide is currently up to date."

  alertTitleUpdateError: =>
    switch @i18n
      when "es_es"
        "Error buscando actualizaciones"
      else
        "Error checking for updates"

  alertMessageUpdateError: =>
    switch @i18n
      when "es_es"
        "Desgraciadamente, GuideGuide no ha sido capaz de buscar actualizaciones
        en este momento. Por favor, inténtalo de nuevo más adelante."
      else
        "Unfortunately, GuideGuide is unable to check for updates at this time.
        Please try again later."

  alertTitleUpdate: =>
    "Updates available"

  alertMessageUpdate: =>
    "Update GuideGuide to get the latest version."

  alertTitleImportSuccess: =>
    switch @i18n
      when "es_es"
        "Sets importados"
      else
        "Sets imported"

  alertMessageImportSuccess: =>
    switch @i18n
      when "es_es"
        "Tus sets se han importado correctamente."
      else
        "Your sets have successfully been imported."

  alertTitleImportGistError: =>
    switch @i18n
      when "es_es"
        "Error de Importación"
      else
        "Import Error"

  alertMessageImportGistError: =>
    switch @i18n
      when "es_es"
        "Desgraciadamente, GuideGuide no ha sido capaz de importar sets en este
        momento. Por favor, inténtalo de nuevo más adelante."
      else
        "Unfortunately, GuideGuide is unable to import sets at this time.
        Please try again later."

  alertTitleImportGistNoSets: =>
    switch @i18n
      when "es_es"
        "Error de Importación"
      else
        "Import error"

  alertMessageImportGistNoSets: =>
    switch @i18n
      when "es_es"
        "GuideGuide no ha sido capaz de encontrar sets.json en este Gist."
      else
        "GuideGuide was not able to find sets.json in this Gist."

  alertTitleImportNotGist: =>
    switch @i18n
      when "es_es"
        "Error de Importación"
      else
        "Import Error"

  alertMessageImportNotGist: =>
    switch @i18n
      when "es_es"
        "El texto de entrada no contiene una url de GitHub Gist."
      else
        "The input text does not contain a GitHub Gist url."

  alertTitleExportSuccess: =>
    switch @i18n
      when "es_es"
        "Sets exportados"
      else
        "Sets have been exported"

  alertMessageExportSuccess: (url) =>
    button = "<div><strong><a class='js-link button export-button' href='#{ url }'>#{ @uiOpenInBrowser() }</a></strong></div>"
    switch @i18n
      when "es_es"
        "Tus sets han sido exportados a un GitHub Gist secreto. #{ button }"
      else
        "Your sets have been exported to a secret GitHub Gist. #{ button }"

  alertTitleExportError: =>
    switch @i18n
      when "es_es"
        "Imposible exportar"
      else
        "Unable to export"

  alertMessageExportError: =>
    switch @i18n
      when "es_es"
        "Desgraciadamente, GuideGuide no ha sido capaz de exportar sets en este
        momento. Por favor, inténtalo de nuevo más adelante."
      else
        "Unfortunately, GuideGuide is unable to export sets at this time.
        Please try again later."

  alertTitleDonate: =>
    switch @i18n
      when "es_es"
        "¿Te gustaría donar?"
      else
        "Would you like to donate?"

  alertMessageDonate: =>
    switch @i18n
      when "es_es"
        "¡Vaya, ya has usado GuideGuide 30 veces! Parece que le estás sacando
        bastante partido a GuideGuide, ¿te interesaría hacer una donación para
        contribuir a su desarrollo?"
      else
        "Yowza, you've used GuideGuide 30 times! Since you seem to get quite a
        bit of use out of GuideGuide, would you consider making a donation to
        the development?"

  #
  # Grid notation messages
  # These messages appear in the Custom field
  #

  # Code: 1
  gnUnrecognized: =>
    switch @i18n
      when "es_es"
        "Comando no reconocido"
      else
        "Unrecognized command"

  # Code: 2
  gnNoGrids: =>
    switch @i18n
      when "es_es"
        "Esta cadena no contiene ninguna retícula"
      else
        "This string does not contain any grids"

  # Code: 3
  gnNoFillWildcards: =>
    switch @i18n
      when "es_es"
        "Los comodines no pueden ser rellenos"
      else
        "Wildcards cannot be fills"

  # Code: 4
  gnOneFillPerGrid: =>
    switch @i18n
      when "es_es"
        "Una retícula sólo puede contener un relleno"
      else
        "A grid can only contain one fill"

  # Code: 5
  gnFillInVariable: =>
    switch @i18n
      when "es_es"
        "Las variables no pueden contener un relleno"
      else
        "Variables cannot contain a fill"

  # Code: 6
  gnUndefinedVariable: =>
    switch @i18n
      when "es_es"
        "Variable no definida"
      else
        "Undefined variable"

  gnStringFromExistingGuides: =>
    switch @i18n
      when "es_es"
        "Cadena generada a partir de las guías existentes"
      else
        "String generated from existing guides"

if (typeof module != 'undefined' && typeof module.exports != 'undefined')
  module.exports = Messages
else
  window.Messages = Messages
