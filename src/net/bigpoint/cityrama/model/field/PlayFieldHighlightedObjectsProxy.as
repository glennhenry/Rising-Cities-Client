package net.bigpoint.cityrama.model.field
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayFieldHighlightedObjectsProxy extends Proxy
   {
      
      public static const NAME:String = "PlayFieldHighlightedObjectsProxy";
      
      private var _highlitedShops:Vector.<ShopFieldObject>;
      
      private var _highlitedBuildings:Vector.<BillboardObject>;
      
      private var _highlitedBuildingsIDs:Vector.<Number>;
      
      private var _playFieldObjectProxy:PlayfieldObjectsProxy;
      
      private var _objectVothatMoves:BillboardObjectVo;
      
      private var _shopLocaleId:String;
      
      private var _buffRect:Rectangle = new Rectangle();
      
      private var _testRect:Rectangle = new Rectangle();
      
      private var _securityMatrixProxy:SecurityMatrixProxy;
      
      public function PlayFieldHighlightedObjectsProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this.init();
      }
      
      private function init() : void
      {
         this._playFieldObjectProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._securityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         this._highlitedBuildings = new Vector.<BillboardObject>();
         this._highlitedBuildingsIDs = new Vector.<Number>();
         this._highlitedShops = new Vector.<ShopFieldObject>();
      }
      
      override public function onRemove() : void
      {
         this._playFieldObjectProxy = null;
         this._highlitedBuildings = null;
         this._highlitedBuildingsIDs = null;
         this._objectVothatMoves = null;
         this._shopLocaleId = "";
         this._highlitedShops = null;
      }
      
      private function filterDoubles(param1:Vector.<ResidentialFieldObject>) : Vector.<ResidentialFieldObject>
      {
         var _loc3_:ResidentialFieldObject = null;
         var _loc4_:Boolean = false;
         var _loc5_:ResidentialFieldObject = null;
         var _loc2_:Vector.<ResidentialFieldObject> = new Vector.<ResidentialFieldObject>();
         for each(_loc3_ in param1)
         {
            _loc4_ = false;
            for each(_loc5_ in _loc2_)
            {
               if(_loc3_ == _loc5_)
               {
                  _loc4_ = true;
                  break;
               }
            }
            if(!_loc4_)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function findAndHighlightBuildings(param1:Rectangle) : void
      {
         var _loc5_:BillboardObject = null;
         var _loc7_:ResidentialFieldObject = null;
         var _loc8_:BillboardObject = null;
         var _loc9_:Number = NaN;
         var _loc10_:NeedVo = null;
         if(!this._playFieldObjectProxy)
         {
            this.init();
         }
         var _loc2_:Vector.<ResidentialFieldObject> = this._playFieldObjectProxy.getResidentialsByRect(param1);
         _loc2_ = this.filterDoubles(_loc2_);
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:Vector.<BillboardObject> = new Vector.<BillboardObject>();
         var _loc4_:Vector.<BillboardObject> = new Vector.<BillboardObject>();
         var _loc6_:Boolean = false;
         for each(_loc5_ in this._highlitedBuildings)
         {
            _loc6_ = false;
            for each(_loc8_ in _loc2_)
            {
               if(_loc5_.billboardObjectVo.buildingDTO.id == _loc8_.billboardObjectVo.buildingDTO.id)
               {
                  _loc6_ = true;
                  break;
               }
            }
            if(!_loc6_)
            {
               _loc3_.push(_loc5_);
            }
         }
         if(_loc3_.length > 0)
         {
            this.resetHighlight(_loc3_);
         }
         for each(_loc5_ in _loc2_)
         {
            _loc6_ = false;
            for each(_loc9_ in this._highlitedBuildingsIDs)
            {
               if(_loc5_.billboardObjectVo.buildingDTO.id == _loc9_)
               {
                  _loc6_ = true;
                  break;
               }
            }
            if(!_loc6_)
            {
               if((_loc5_ as ResidentialFieldObject).residentialFieldObjectVo.residentialNeeds)
               {
                  for each(_loc10_ in (_loc5_ as ResidentialFieldObject).residentialFieldObjectVo.residentialNeeds)
                  {
                     if(_loc10_.shopLocaleId == this._shopLocaleId)
                     {
                        _loc4_.push(_loc5_);
                        break;
                     }
                  }
               }
            }
         }
         for each(_loc7_ in _loc4_)
         {
            this._highlitedBuildings.push(_loc7_);
            this._highlitedBuildingsIDs.push(_loc7_.residentialFieldObjectVo.buildingDTO.id);
            _loc7_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,true);
         }
      }
      
      public function findAndHighlightEmergency(param1:Rectangle) : void
      {
         var _loc4_:BillboardObject = null;
         var _loc5_:Boolean = false;
         var _loc6_:BillboardObject = null;
         var _loc7_:BillboardObject = null;
         if(!this._playFieldObjectProxy || !this._securityMatrixProxy)
         {
            this.init();
         }
         var _loc2_:Vector.<BillboardObject> = this._playFieldObjectProxy.getEmergencyableBuildingsByRect(param1);
         var _loc3_:Vector.<BillboardObject> = new Vector.<BillboardObject>();
         if(_loc2_ == null || _loc2_.length == 0)
         {
            this.resetHighlight();
         }
         for each(_loc4_ in this._highlitedBuildings)
         {
            _loc5_ = false;
            for each(_loc7_ in _loc2_)
            {
               if(_loc4_.billboardObjectVo.buildingDTO.id == _loc7_.billboardObjectVo.buildingDTO.id)
               {
                  _loc5_ = true;
                  break;
               }
            }
            if(!_loc5_)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc3_.length > 0)
         {
            this.resetHighlight(_loc3_);
         }
         for each(_loc6_ in _loc2_)
         {
            this._highlitedBuildings.push(_loc6_);
            this._highlitedBuildingsIDs.push(_loc6_.billboardObjectVo.buildingDTO.id);
            _loc6_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,true);
         }
      }
      
      public function resetHighlight(param1:Vector.<BillboardObject> = null) : void
      {
         var _loc2_:BillboardObject = null;
         var _loc3_:BillboardObject = null;
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               _loc2_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,false);
               this._highlitedBuildingsIDs.splice(this._highlitedBuildingsIDs.indexOf(_loc2_.billboardObjectVo.buildingDTO.id),1);
               this._highlitedBuildings.splice(this._highlitedBuildings.indexOf(_loc2_),1);
            }
         }
         else
         {
            for each(_loc3_ in this._highlitedBuildings)
            {
               _loc3_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,false);
            }
            this._highlitedBuildings = new Vector.<BillboardObject>();
            this._highlitedBuildingsIDs = new Vector.<Number>();
         }
      }
      
      public function get objectVothatMoves() : BillboardObjectVo
      {
         return this._objectVothatMoves;
      }
      
      public function set objectVothatMoves(param1:BillboardObjectVo) : void
      {
         var _loc2_:ShopFieldObjectVo = null;
         this._objectVothatMoves = param1;
         if(param1 is ShopFieldObjectVo)
         {
            _loc2_ = param1 as ShopFieldObjectVo;
            this._shopLocaleId = _loc2_.configPlayfieldItemVo.localeId;
         }
      }
      
      public function findAndHighlightShops(param1:Cuboid) : void
      {
         var _loc4_:ShopFieldObject = null;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         var _loc7_:NeedVo = null;
         var _loc8_:Rectangle = null;
         var _loc9_:Rectangle = null;
         var _loc10_:String = null;
         if(!this._playFieldObjectProxy)
         {
            this.init();
         }
         var _loc2_:ResidentialFieldObjectVo = this.objectVothatMoves as ResidentialFieldObjectVo;
         var _loc3_:Vector.<ShopFieldObject> = this._playFieldObjectProxy.needShopList;
         this._testRect.x = param1.left;
         this._testRect.y = param1.top;
         this._testRect.width = param1.width;
         this._testRect.height = param1.height;
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = false;
            _loc6_ = _loc4_.shopFieldObjectVo.configPlayfieldItemVo.localeId;
            for each(_loc7_ in _loc2_.residentialNeeds)
            {
               _loc10_ = _loc7_.shopLocaleId;
               if(_loc6_ == _loc10_)
               {
                  _loc5_ = true;
               }
            }
            if(_loc5_)
            {
               _loc8_ = _loc4_.shopFieldObjectVo.satisfyRange;
               if(_loc8_.width == 0 || _loc8_.height == 0)
               {
                  return;
               }
               _loc8_.x = _loc4_.shopFieldObjectVo.matrixCoordinates.left - (_loc8_.width - _loc4_.shopFieldObjectVo.configPlayfieldItemVo.sizeX) / 2;
               _loc8_.y = _loc4_.shopFieldObjectVo.matrixCoordinates.top - (_loc8_.height - _loc4_.shopFieldObjectVo.configPlayfieldItemVo.sizeY) / 2;
               this._buffRect.x = _loc8_.x;
               this._buffRect.y = _loc8_.y;
               this._buffRect.height = _loc8_.height;
               this._buffRect.width = _loc8_.width;
               _loc9_ = this._testRect.intersection(this._buffRect);
               if(_loc9_.width > 0 && _loc9_.height > 0)
               {
                  if(this._highlitedShops.indexOf(_loc4_) == -1)
                  {
                     this._highlitedShops.push(_loc4_);
                  }
                  _loc4_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,true);
               }
               else
               {
                  _loc4_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,false);
               }
            }
         }
      }
      
      public function resetHighlightedShops() : void
      {
         var _loc1_:ShopFieldObject = null;
         for each(_loc1_ in this._highlitedShops)
         {
            _loc1_.invalidateHighlightManager(HighlightManager.INMOVE_RANGE_TINT,false);
         }
         this._highlitedShops = new Vector.<ShopFieldObject>();
      }
   }
}

