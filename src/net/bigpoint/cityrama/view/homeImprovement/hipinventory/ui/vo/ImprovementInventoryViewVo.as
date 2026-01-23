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
      
      public static const VALID_SORT_TYPES:Vector.<String> = new <String>[SORT_ALL,SORT_EPIC,SORT_COMMON,SORT_RARE,SORT_LEGENDARY];
      
      private var _sortToType:Dictionary = new Dictionary();
      
      private var _cacheDict:Dictionary = new Dictionary();
      
      private var _playerStock:Vector.<InventoryImprovementVo>;
      
      public function ImprovementInventoryViewVo(param1:Vector.<InventoryImprovementVo>)
      {
         super();
         this._playerStock = param1;
         this._sortToType[SORT_ALL] = new <String>[ServerImprovementConstants.QUALITY_EPIC,ServerImprovementConstants.QUALITY_COMMON,ServerImprovementConstants.QUALITY_RARE,ServerImprovementConstants.QUALITY_LEGENDARY];
         this._sortToType[SORT_EPIC] = new <String>[ServerImprovementConstants.QUALITY_EPIC];
         this._sortToType[SORT_COMMON] = new <String>[ServerImprovementConstants.QUALITY_COMMON];
         this._sortToType[SORT_RARE] = new <String>[ServerImprovementConstants.QUALITY_RARE];
         this._sortToType[SORT_LEGENDARY] = new <String>[ServerImprovementConstants.QUALITY_LEGENDARY];
      }
      
      public function invalidateCaches() : void
      {
         this._cacheDict = new Dictionary();
      }
      
      public function getListAsArrayCollectionByType(param1:String) : IList
      {
         var _loc3_:ImprovementInventoryItemRendererVo = null;
         if(VALID_SORT_TYPES.indexOf(param1) == -1)
         {
            throw new IllegalOperationError("Non implemented sort type " + param1);
         }
         if(this._cacheDict[param1])
         {
            return this._cacheDict[param1];
         }
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc3_ in this.getImprovementsByType(this._sortToType[param1]))
         {
            _loc2_.addItem(_loc3_);
         }
         this._cacheDict[param1] = _loc2_;
         return _loc2_;
      }
      
      public function getAmountByType(param1:String) : int
      {
         var _loc3_:InventoryImprovementVo = null;
         for each(_loc3_ in this._playerStock)
         {
            if(this._sortToType[param1].indexOf(_loc3_.improvementVo.quality) != -1)
            {
               var _loc2_:int = 0 + _loc3_.stockAmount;
            }
         }
         return 0;
      }
      
      private function getImprovementsByType(param1:Vector.<String>) : Vector.<ImprovementInventoryItemRendererVo>
      {
         var _loc3_:InventoryImprovementVo = null;
         var _loc4_:ImprovementInventoryItemRendererVo = null;
         var _loc2_:Vector.<ImprovementInventoryItemRendererVo> = new Vector.<ImprovementInventoryItemRendererVo>(0);
         for each(_loc3_ in this._playerStock)
         {
            if(param1.indexOf(_loc3_.improvementVo.quality) != -1)
            {
               _loc4_ = new ImprovementInventoryItemRendererVo();
               _loc4_.improvementVo = _loc3_.improvementVo;
               _loc4_.amount = _loc3_.stockAmount;
               _loc4_.quality = _loc3_.improvementVo.quality;
               _loc4_.cid = _loc3_.improvementVo.config.id;
               _loc4_.itemDynaVo = ImprovementLayerProxy.improvementGfx(_loc3_.improvementVo.config,ImprovementLayerProxy.SIZE_MINI);
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
   }
}

