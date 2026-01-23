package net.bigpoint.cityrama.model.miniLayer.vo
{
   import flash.errors.IllegalOperationError;
   
   public class QueryMiniLayerVo
   {
      
      public static const LAYER_TYPE_ACCEPT:uint = 0;
      
      public static const LAYER_TYPE_QUERY:uint = 1;
      
      private static const VALID_LAYER_TYPES:Vector.<uint> = new <uint>[LAYER_TYPE_ACCEPT,LAYER_TYPE_QUERY];
      
      private var _layerType:uint;
      
      private var _title:String;
      
      private var _layerText:String;
      
      private var _confirmBtnLabel:String;
      
      private var _confirmBtnTooltip:String;
      
      private var _denyBtnLabel:String;
      
      private var _denyBtnTooltip:String;
      
      private var _acceptBtnLabel:String;
      
      private var _acceptBtnTooltip:String;
      
      public function QueryMiniLayerVo(param1:uint)
      {
         super();
         this.checkValid(param1);
         this._layerType = param1;
      }
      
      private function checkValid(param1:uint) : void
      {
         if(VALID_LAYER_TYPES.indexOf(param1) == -1)
         {
            throw new IllegalOperationError("QueryMiniLayerVo:: invalid layer type!");
         }
      }
      
      public function get showQueryButtons() : Boolean
      {
         if(this._layerType == LAYER_TYPE_QUERY)
         {
            return true;
         }
         return false;
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function set title(param1:String) : void
      {
         this._title = param1;
      }
      
      public function get layerText() : String
      {
         return this._layerText;
      }
      
      public function set layerText(param1:String) : void
      {
         this._layerText = param1;
      }
      
      public function get confirmBtnLabel() : String
      {
         return this._confirmBtnLabel;
      }
      
      public function set confirmBtnLabel(param1:String) : void
      {
         this._confirmBtnLabel = param1;
      }
      
      public function get confirmBtnTooltip() : String
      {
         return this._confirmBtnTooltip;
      }
      
      public function set confirmBtnTooltip(param1:String) : void
      {
         this._confirmBtnTooltip = param1;
      }
      
      public function get denyBtnLabel() : String
      {
         return this._denyBtnLabel;
      }
      
      public function set denyBtnLabel(param1:String) : void
      {
         this._denyBtnLabel = param1;
      }
      
      public function get denyBtnTooltip() : String
      {
         return this._denyBtnTooltip;
      }
      
      public function set denyBtnTooltip(param1:String) : void
      {
         this._denyBtnTooltip = param1;
      }
      
      public function get acceptBtnLabel() : String
      {
         return this._acceptBtnLabel;
      }
      
      public function set acceptBtnLabel(param1:String) : void
      {
         this._acceptBtnLabel = param1;
      }
      
      public function get acceptBtnTooltip() : String
      {
         return this._acceptBtnTooltip;
      }
      
      public function set acceptBtnTooltip(param1:String) : void
      {
         this._acceptBtnTooltip = param1;
      }
   }
}

