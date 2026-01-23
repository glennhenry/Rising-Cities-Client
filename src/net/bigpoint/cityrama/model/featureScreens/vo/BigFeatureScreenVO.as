package net.bigpoint.cityrama.model.featureScreens.vo
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   
   public class BigFeatureScreenVO
   {
      
      private var _texts:Vector.<String>;
      
      private var _popuptitle:String;
      
      private var _titles:Vector.<String>;
      
      private var _dynaLibName:String;
      
      private var _dynaMCName:String;
      
      private var _popupflavour:String;
      
      private var _layerStyleName:String = "";
      
      public function BigFeatureScreenVO()
      {
         super();
      }
      
      public function get texts() : Vector.<String>
      {
         this.validate();
         return this._texts;
      }
      
      private function validate() : void
      {
         if(this._texts == null || this._dynaLibName == null || this._dynaMCName == null || this._popuptitle == null || this._popupflavour == null)
         {
            throw new RamaCityError("Invalid Object please set it all! " + this._texts + " " + this._dynaLibName + " " + this._dynaMCName + " " + this._popuptitle + " " + this._popupflavour);
         }
      }
      
      public function get titles() : Vector.<String>
      {
         if(this._titles == null)
         {
            this._titles = new Vector.<String>();
         }
         return this._titles;
      }
      
      public function set titles(param1:Vector.<String>) : void
      {
         this._titles = param1;
      }
      
      public function set texts(param1:Vector.<String>) : void
      {
         this._texts = param1;
      }
      
      public function get dynaLibName() : String
      {
         this.validate();
         return this._dynaLibName;
      }
      
      public function get dynaMCName() : String
      {
         this.validate();
         return this._dynaMCName;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         this._dynaLibName = param1;
      }
      
      public function set dynaMCName(param1:String) : void
      {
         this._dynaMCName = param1;
      }
      
      public function get popuptitle() : String
      {
         this.validate();
         return this._popuptitle;
      }
      
      public function set popuptitle(param1:String) : void
      {
         this._popuptitle = param1;
      }
      
      public function get popupflavour() : String
      {
         this.validate();
         return this._popupflavour;
      }
      
      public function set popupflavour(param1:String) : void
      {
         this._popupflavour = param1;
      }
      
      public function get layerStyleName() : String
      {
         return this._layerStyleName;
      }
      
      public function set layerStyleName(param1:String) : void
      {
         this._layerStyleName = param1;
      }
   }
}

