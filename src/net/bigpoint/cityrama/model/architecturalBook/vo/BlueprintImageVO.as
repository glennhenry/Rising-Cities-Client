package net.bigpoint.cityrama.model.architecturalBook.vo
{
   public class BlueprintImageVO
   {
      
      private var _visualName:String;
      
      private var _visualLibName:String;
      
      private var _toolTip:String;
      
      private var _descriptionText:String;
      
      public function BlueprintImageVO()
      {
         super();
         this.cleanAll();
      }
      
      public function clone() : BlueprintImageVO
      {
         var _loc1_:BlueprintImageVO = new BlueprintImageVO();
         _loc1_.visualName = this.visualName;
         _loc1_.visualLibName = this.visualLibName;
         _loc1_.toolTip = this.toolTip;
         return _loc1_;
      }
      
      public function cleanAll() : void
      {
         this._visualName = "";
         this._visualLibName = "";
         this._toolTip = "";
         this._descriptionText = "";
      }
      
      public function get visualName() : String
      {
         return this._visualName;
      }
      
      public function set visualName(param1:String) : void
      {
         this._visualName = param1;
      }
      
      public function get visualLibName() : String
      {
         return this._visualLibName;
      }
      
      public function set visualLibName(param1:String) : void
      {
         this._visualLibName = param1;
      }
      
      public function get toolTip() : String
      {
         return this._toolTip;
      }
      
      public function set toolTip(param1:String) : void
      {
         this._toolTip = param1;
      }
      
      public function get descriptionText() : String
      {
         return this._descriptionText;
      }
      
      public function set descriptionText(param1:String) : void
      {
         this._descriptionText = param1;
      }
   }
}

