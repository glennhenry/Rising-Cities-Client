package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class FieldInfoLayerHeaderVo
   {
      
      private var _preHeaderText:String;
      
      private var _headerText:String;
      
      private var _icon_dynaBmpSourceName:String;
      
      private var _icon_dynaLibName:String;
      
      public function FieldInfoLayerHeaderVo()
      {
         super();
      }
      
      public function get preHeaderText() : String
      {
         return this._preHeaderText;
      }
      
      public function set preHeaderText(param1:String) : void
      {
         this._preHeaderText = param1;
      }
      
      public function get headerText() : String
      {
         return this._headerText;
      }
      
      public function set headerText(param1:String) : void
      {
         this._headerText = param1;
      }
      
      public function get icon_dynaBmpSourceName() : String
      {
         return this._icon_dynaBmpSourceName;
      }
      
      public function set icon_dynaBmpSourceName(param1:String) : void
      {
         this._icon_dynaBmpSourceName = param1;
      }
      
      public function get icon_dynaLibName() : String
      {
         return this._icon_dynaLibName;
      }
      
      public function set icon_dynaLibName(param1:String) : void
      {
         this._icon_dynaLibName = param1;
      }
   }
}

