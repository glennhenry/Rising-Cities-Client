package net.bigpoint.cityrama.model.miniLayer.vo
{
   import flash.errors.IllegalOperationError;
   
   public class QueryMiniLayerVo
   {
      
      public static const LAYER_TYPE_ACCEPT:uint = 0;
      
      public static const LAYER_TYPE_QUERY:uint = 1;
      
      private static const VALID_LAYER_TYPES:Vector.<uint>;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         LAYER_TYPE_ACCEPT = 0;
         if(!(_loc1_ && QueryMiniLayerVo))
         {
            LAYER_TYPE_QUERY = 1;
            if(_loc2_)
            {
               addr0054:
               VALID_LAYER_TYPES = new <uint>[LAYER_TYPE_ACCEPT,LAYER_TYPE_QUERY];
            }
            return;
         }
      }
      §§goto(addr0054);
      
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               this.checkValid(param1);
               if(_loc2_)
               {
                  addr003d:
                  this._layerType = param1;
               }
               return;
            }
         }
         §§goto(addr003d);
      }
      
      private function checkValid(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(VALID_LAYER_TYPES.indexOf(param1) == -1)
            {
               if(_loc2_ || _loc2_)
               {
                  throw new IllegalOperationError("QueryMiniLayerVo:: invalid layer type!");
               }
            }
         }
      }
      
      public function get showQueryButtons() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._layerType == LAYER_TYPE_QUERY)
            {
               if(!_loc1_)
               {
                  §§push(true);
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr003f:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr003f);
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function set title(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._title = param1;
         }
      }
      
      public function get layerText() : String
      {
         return this._layerText;
      }
      
      public function set layerText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._layerText = param1;
         }
      }
      
      public function get confirmBtnLabel() : String
      {
         return this._confirmBtnLabel;
      }
      
      public function set confirmBtnLabel(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._confirmBtnLabel = param1;
         }
      }
      
      public function get confirmBtnTooltip() : String
      {
         return this._confirmBtnTooltip;
      }
      
      public function set confirmBtnTooltip(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._confirmBtnTooltip = param1;
         }
      }
      
      public function get denyBtnLabel() : String
      {
         return this._denyBtnLabel;
      }
      
      public function set denyBtnLabel(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._denyBtnLabel = param1;
         }
      }
      
      public function get denyBtnTooltip() : String
      {
         return this._denyBtnTooltip;
      }
      
      public function set denyBtnTooltip(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._denyBtnTooltip = param1;
         }
      }
      
      public function get acceptBtnLabel() : String
      {
         return this._acceptBtnLabel;
      }
      
      public function set acceptBtnLabel(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._acceptBtnLabel = param1;
         }
      }
      
      public function get acceptBtnTooltip() : String
      {
         return this._acceptBtnTooltip;
      }
      
      public function set acceptBtnTooltip(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._acceptBtnTooltip = param1;
         }
      }
   }
}

