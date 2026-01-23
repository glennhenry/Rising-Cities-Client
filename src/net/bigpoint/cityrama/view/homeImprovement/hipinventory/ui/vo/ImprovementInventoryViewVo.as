package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.vo
{
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.collections.IList;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.InventoryImprovementVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   
   public class ImprovementInventoryViewVo
   {
      
      public static const SORT_ALL:String = "SORT_ALL";
      
      public static const SORT_EPIC:String = "SORT_EPIC";
      
      public static const SORT_COMMON:String = "SORT_COMMON";
      
      public static const SORT_RARE:String = "SORT_RARE";
      
      public static const SORT_LEGENDARY:String = "SORT_LEGENDARY";
      
      public static const VALID_SORT_TYPES:Vector.<String>;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         SORT_ALL = "SORT_ALL";
         if(_loc2_)
         {
            SORT_EPIC = "SORT_EPIC";
            if(!_loc1_)
            {
               addr0032:
               SORT_COMMON = "SORT_COMMON";
               if(_loc2_)
               {
                  §§goto(addr0040);
               }
               §§goto(addr0060);
            }
            addr0040:
            SORT_RARE = "SORT_RARE";
            if(!(_loc1_ && _loc2_))
            {
               addr0060:
               SORT_LEGENDARY = "SORT_LEGENDARY";
               if(_loc2_)
               {
                  VALID_SORT_TYPES = new <String>[SORT_ALL,SORT_EPIC,SORT_COMMON,SORT_RARE,SORT_LEGENDARY];
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      §§goto(addr0060);
      
      private var _sortToType:Dictionary;
      
      private var _cacheDict:Dictionary;
      
      private var _playerStock:Vector.<InventoryImprovementVo>;
      
      public function ImprovementInventoryViewVo(param1:Vector.<InventoryImprovementVo>)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._sortToType = new Dictionary();
            if(_loc3_)
            {
               this._cacheDict = new Dictionary();
               if(!(_loc2_ && Boolean(this)))
               {
                  super();
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr00de);
               }
               §§goto(addr00b5);
            }
            §§goto(addr0145);
         }
         addr0054:
         this._playerStock = param1;
         if(_loc3_)
         {
            §§push(this._sortToType);
            §§push(SORT_ALL);
            var _temp_7:* = new <String>[ServerImprovementConstants.QUALITY_EPIC,ServerImprovementConstants.QUALITY_COMMON,ServerImprovementConstants.QUALITY_RARE,ServerImprovementConstants.QUALITY_LEGENDARY];
            §§pop()[§§pop()] = new <String>[ServerImprovementConstants.QUALITY_EPIC,ServerImprovementConstants.QUALITY_COMMON,ServerImprovementConstants.QUALITY_RARE,ServerImprovementConstants.QUALITY_LEGENDARY];
            if(_loc3_)
            {
               addr00b5:
               this._sortToType[SORT_EPIC] = new <String>[ServerImprovementConstants.QUALITY_EPIC];
               if(!_loc2_)
               {
                  addr00de:
                  this._sortToType[SORT_COMMON] = new <String>[ServerImprovementConstants.QUALITY_COMMON];
                  if(!_loc2_)
                  {
                     §§goto(addr0107);
                  }
               }
               §§goto(addr0145);
            }
            addr0107:
            §§push(this._sortToType);
            §§push(SORT_RARE);
            §§pop()[§§pop()] = new <String>[ServerImprovementConstants.QUALITY_RARE];
            if(_loc3_ || Boolean(param1))
            {
               addr0145:
               this._sortToType[SORT_LEGENDARY] = new <String>[ServerImprovementConstants.QUALITY_LEGENDARY];
            }
            §§goto(addr0169);
         }
         addr0169:
      }
      
      public function invalidateCaches() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._cacheDict = new Dictionary();
         }
      }
      
      public function getListAsArrayCollectionByType(param1:String) : IList
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ImprovementInventoryItemRendererVo = null;
         if(_loc7_ || Boolean(this))
         {
            if(VALID_SORT_TYPES.indexOf(param1) == -1)
            {
               if(_loc7_)
               {
                  throw new IllegalOperationError("Non implemented sort type " + param1);
               }
            }
         }
         if(this._cacheDict[param1])
         {
            if(_loc7_ || Boolean(this))
            {
               return this._cacheDict[param1];
            }
         }
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc3_ in this.getImprovementsByType(this._sortToType[param1]))
         {
            if(_loc7_ || Boolean(this))
            {
               _loc2_.addItem(_loc3_);
            }
         }
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            this._cacheDict[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function getAmountByType(param1:String) : int
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:InventoryImprovementVo = null;
         var _loc2_:* = 0;
         for each(_loc3_ in this._playerStock)
         {
            if(_loc6_)
            {
               if(this._sortToType[param1].indexOf(_loc3_.improvementVo.quality) == -1)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            §§push(_loc2_);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(int(§§pop() + _loc3_.stockAmount));
            }
            _loc2_ = §§pop();
         }
         return _loc2_;
      }
      
      private function getImprovementsByType(param1:Vector.<String>) : Vector.<ImprovementInventoryItemRendererVo>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:InventoryImprovementVo = null;
         var _loc4_:ImprovementInventoryItemRendererVo = null;
         var _loc2_:Vector.<ImprovementInventoryItemRendererVo> = new Vector.<ImprovementInventoryItemRendererVo>(0);
         for each(_loc3_ in this._playerStock)
         {
            if(!_loc8_)
            {
               if(param1.indexOf(_loc3_.improvementVo.quality) == -1)
               {
                  continue;
               }
            }
            _loc4_ = new ImprovementInventoryItemRendererVo();
            _loc4_.improvementVo = _loc3_.improvementVo;
            if(!(_loc8_ && Boolean(_loc3_)))
            {
               _loc4_.amount = _loc3_.stockAmount;
               if(_loc7_ || Boolean(param1))
               {
                  _loc4_.quality = _loc3_.improvementVo.quality;
                  if(!_loc8_)
                  {
                     _loc4_.cid = _loc3_.improvementVo.config.id;
                     if(_loc8_ && Boolean(_loc3_))
                     {
                        continue;
                     }
                     addr00e3:
                     _loc4_.itemDynaVo = ImprovementLayerProxy.improvementGfx(_loc3_.improvementVo.config,ImprovementLayerProxy.SIZE_MINI);
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  _loc2_.push(_loc4_);
                  continue;
               }
            }
            §§goto(addr00e3);
         }
         return _loc2_;
      }
   }
}

