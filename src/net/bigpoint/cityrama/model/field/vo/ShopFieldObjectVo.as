package net.bigpoint.cityrama.model.field.vo
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.NeedStackDTO;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   
   public class ShopFieldObjectVo extends BillboardObjectVo
   {
      
      private var _formerPosition:Cuboid;
      
      private var _satisfiesThisNeed:Boolean;
      
      private var _residentialRollOver:Boolean;
      
      private var _globalMoodModifier:Number = 1;
      
      public function ShopFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function get isIdle() : Boolean
      {
         return !this.isOperational;
      }
      
      public function get isAlmostEmpty() : Boolean
      {
         var _loc1_:ConfigNeedDTO = null;
         var _loc2_:ConfigNeedStackDTO = null;
         var _loc3_:Boolean = false;
         var _loc4_:NeedStackDTO = null;
         if(_buildingDTO == null)
         {
            return false;
         }
         var _loc5_:int = 0;
         var _loc6_:* = this.possibleNeedSatisfier;
         for each(_loc1_ in _loc6_)
         {
            for each(_loc2_ in _loc1_.requiredGoods)
            {
               _loc3_ = true;
               for each(_loc4_ in this.sellableNeedStack)
               {
                  if(_loc4_.configId == _loc2_.id && _loc4_.amount < Math.abs(_loc2_.configOutout.outputAmount * this._globalMoodModifier) + 3)
                  {
                     _loc3_ = false;
                  }
               }
               if(_loc3_)
               {
                  return false;
               }
            }
            return true;
         }
         return true;
      }
      
      public function get sellableNeedStack() : Vector.<NeedStackDTO>
      {
         if(_buildingDTO == null)
         {
            return new Vector.<NeedStackDTO>();
         }
         return _buildingDTO.needProductStock;
      }
      
      public function get isOperational() : Boolean
      {
         var _loc1_:ConfigNeedDTO = null;
         var _loc2_:ConfigNeedStackDTO = null;
         var _loc3_:Boolean = false;
         var _loc4_:NeedStackDTO = null;
         var _loc5_:int = 0;
         var _loc6_:* = this.possibleNeedSatisfier;
         for each(_loc1_ in _loc6_)
         {
            for each(_loc2_ in _loc1_.requiredGoods)
            {
               _loc3_ = true;
               for each(_loc4_ in this.sellableNeedStack)
               {
                  if(_loc4_.configId == _loc2_.id && _loc4_.amount && _loc4_.amount >= Math.abs(_loc2_.configOutout.outputAmount * this._globalMoodModifier))
                  {
                     _loc3_ = false;
                  }
               }
               if(_loc3_)
               {
                  return false;
               }
            }
            return true;
         }
         return _buildingDTO.needProductStock != null;
      }
      
      public function get possibleNeedSatisfier() : Vector.<ConfigNeedDTO>
      {
         return configPlayfieldItemVo.needShopConfigs;
      }
      
      public function get satisfyRange() : Rectangle
      {
         var _loc2_:ConfigNeedDTO = null;
         var _loc1_:Rectangle = new Rectangle(0,0,0,0);
         for each(_loc2_ in this.possibleNeedSatisfier)
         {
            if(_loc1_.width < _loc2_.buffRangeX * 2 + configPlayfieldItemVo.sizeX)
            {
               _loc1_.width = _loc2_.buffRangeX * 2 + configPlayfieldItemVo.sizeX;
            }
            if(_loc1_.height < _loc2_.buffRangeY * 2 + configPlayfieldItemVo.sizeY)
            {
               _loc1_.height = _loc2_.buffRangeY * 2 + configPlayfieldItemVo.sizeY;
            }
         }
         return _loc1_;
      }
      
      public function setFulfillsThisNeed(param1:ResidentialFieldObjectVo = null, param2:Boolean = false) : void
      {
         var _loc3_:NeedVo = null;
         if(param1 != null)
         {
            this._satisfiesThisNeed = false;
            for each(_loc3_ in param1.residentialNeeds)
            {
               if(_loc3_.shopConfigIds.indexOf(configPlayfieldItemVo.id) != -1)
               {
                  this._satisfiesThisNeed = true;
                  this._residentialRollOver = param2;
                  break;
               }
            }
         }
         else
         {
            this._satisfiesThisNeed = false;
            this._residentialRollOver = false;
         }
      }
      
      public function get formerPosition() : Cuboid
      {
         return this._formerPosition;
      }
      
      public function set formerPosition(param1:Cuboid) : void
      {
         this._formerPosition = param1;
      }
      
      public function get satisfiesThisNeed() : Boolean
      {
         return this._satisfiesThisNeed;
      }
      
      public function get residentialRollOver() : Boolean
      {
         return this._residentialRollOver;
      }
      
      public function get globalMoodModifier() : Number
      {
         return this._globalMoodModifier;
      }
      
      public function set globalMoodModifier(param1:Number) : void
      {
         this._globalMoodModifier = param1;
      }
      
      public function get maxLevel() : int
      {
         if(buildingDTO == null)
         {
            return 1;
         }
         return buildingDTO.config.upgradeable ? currentLevel + 1 : currentLevel;
      }
      
      public function get instantUpgradeStartCosts() : Number
      {
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         for each(_loc1_ in configPlayfieldItemVo.activePhases)
         {
            if(_loc1_.phaseType == ServerPhaseTypes.INSTANT_UPGRADE)
            {
               for each(_loc2_ in _loc1_.listEntryOutputs)
               {
                  if(_loc2_.type == ServerOutputConstants.RESOURCE && Boolean(_loc2_.resourceConfig))
                  {
                     if(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
                     {
                        return Math.abs(_loc2_.outputAmount);
                     }
                  }
               }
            }
         }
         return 0;
      }
   }
}

