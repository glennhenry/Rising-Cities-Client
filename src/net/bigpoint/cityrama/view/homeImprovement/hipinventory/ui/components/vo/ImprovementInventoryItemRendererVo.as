package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo
{
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   
   public class ImprovementInventoryItemRendererVo
   {
      
      public static const GET_MORE_CONFIG_ID_DUMMY:Number = -666;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         GET_MORE_CONFIG_ID_DUMMY = -666;
      }
      
      private var _improvementVo:ImprovementVo;
      
      private var _useMasterBg:Boolean = true;
      
      private var _itemDynaVo:BriskDynaVo;
      
      private var _amount:uint;
      
      private var _cid:Number;
      
      private var _quality:String;
      
      private var _isEmpty:Boolean;
      
      private var _isGetMore:Boolean;
      
      public function ImprovementInventoryItemRendererVo(param1:Boolean = false, param2:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super();
            if(_loc4_)
            {
               this._isEmpty = param1;
               if(_loc4_)
               {
                  addr0043:
                  this._isGetMore = param2;
               }
               return;
            }
         }
         §§goto(addr0043);
      }
      
      public function get useMasterBg() : Boolean
      {
         return this._useMasterBg;
      }
      
      public function get itemBackgroundDynaVo() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementBackground(this._quality,ImprovementLayerProxy.SIZE_MINI);
      }
      
      public function get itemDynaVo() : BriskDynaVo
      {
         return this._itemDynaVo;
      }
      
      public function get badgeDynaVo() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementQualityBadge(this._quality,ImprovementLayerProxy.SIZE_MINI);
      }
      
      public function get amount() : uint
      {
         return this._amount;
      }
      
      public function get cid() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(this.isGetMore)
            {
               if(_loc2_)
               {
                  addr0035:
                  §§push(GET_MORE_CONFIG_ID_DUMMY);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0046:
                  return this._cid;
               }
               return §§pop();
            }
            §§goto(addr0046);
         }
         §§goto(addr0035);
      }
      
      public function set useMasterBg(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._useMasterBg = param1;
         }
      }
      
      public function set amount(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._amount = param1;
         }
      }
      
      public function set cid(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._cid = param1;
         }
      }
      
      public function get quality() : String
      {
         return this._quality;
      }
      
      public function set quality(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._quality = param1;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this._isEmpty;
      }
      
      public function set itemDynaVo(param1:BriskDynaVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._itemDynaVo = param1;
         }
      }
      
      public function get isGetMore() : Boolean
      {
         return this._isGetMore;
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._improvementVo = param1;
         }
      }
   }
}

