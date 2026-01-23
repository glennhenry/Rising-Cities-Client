package net.bigpoint.cityrama.view.common.components
{
   import spark.components.Button;
   
   public class ImageOutlineButton extends Button
   {
      
      private static var _skinParts:Object = {
         "image":true,
         "labelDisplay":false,
         "iconDisplay":false
      };
      
      public var image:BriskImageDynaLib;
      
      private var _hasUpOutline:Boolean = true;
      
      private var _hasOverOutline:Boolean = true;
      
      private var _hasDownOutline:Boolean = true;
      
      private var _hasDisabledOutline:Boolean = true;
      
      private var _dynaLibName:String;
      
      private var _dynaBmpSourceName:String;
      
      public function ImageOutlineButton()
      {
         super();
         this.focusEnabled = false;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         this._dynaLibName = param1;
         invalidateProperties();
      }
      
      public function set dynaBmpSourceName(param1:String) : void
      {
         this._dynaBmpSourceName = param1;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.image)
         {
            if(Boolean(this._dynaLibName) && Boolean(this._dynaBmpSourceName))
            {
               this.image.dynaLibName = this._dynaLibName;
               this.image.dynaBmpSourceName = this._dynaBmpSourceName;
            }
         }
      }
      
      public function set hasUpOutline(param1:Boolean) : void
      {
         this._hasUpOutline = param1;
      }
      
      public function set hasOverOutline(param1:Boolean) : void
      {
         this._hasOverOutline = param1;
      }
      
      public function set hasDownOutline(param1:Boolean) : void
      {
         this._hasDownOutline = param1;
      }
      
      public function set hasDisabledOutline(param1:Boolean) : void
      {
         this._hasDisabledOutline = param1;
      }
      
      public function get hasUpOutline() : Boolean
      {
         return this._hasUpOutline;
      }
      
      public function get hasOverOutline() : Boolean
      {
         return this._hasOverOutline;
      }
      
      public function get hasDownOutline() : Boolean
      {
         return this._hasDownOutline;
      }
      
      public function get hasDisabledOutline() : Boolean
      {
         return this._hasDisabledOutline;
      }
   }
}

