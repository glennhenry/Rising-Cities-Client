package net.bigpoint.cityrama.model.miniLayer.vo
{
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   
   public class ImprovementMiniLayerVo
   {
      
      private var _slotId:Number;
      
      private var _buildingId:Number;
      
      private var _improvementVo:ImprovementVo;
      
      private var _realCurrency:Number = 0;
      
      private var _currentTime:Number = -1;
      
      public function ImprovementMiniLayerVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function get slotId() : Number
      {
         return this._slotId;
      }
      
      public function set slotId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._slotId = param1;
         }
      }
      
      public function get buildingId() : Number
      {
         return this._buildingId;
      }
      
      public function set buildingId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._buildingId = param1;
         }
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._improvementVo = param1;
         }
      }
      
      public function get realCurrency() : Number
      {
         return this._realCurrency;
      }
      
      public function set realCurrency(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._realCurrency = param1;
         }
      }
      
      public function get renewalAffordable() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(this._improvementVo)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0047:
                  if(this._realCurrency >= this._improvementVo.renewalPrice)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§push(true);
                        if(!_loc1_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr006a:
                        return false;
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr006a);
         }
         §§goto(addr0047);
      }
      
      public function get currentTime() : Number
      {
         return this._currentTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currentTime = param1;
         }
      }
   }
}

