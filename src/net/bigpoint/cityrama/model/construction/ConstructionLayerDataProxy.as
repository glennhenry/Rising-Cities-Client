package net.bigpoint.cityrama.model.construction
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ConstructionLayerDataProxy extends Proxy
   {
      
      public static const NAME:String = "ConstructionLayerDataProxy";
      
      private var _goodsProxy:PlayerGoodsStockProxy;
      
      private var _resourcesProxy:PlayerResourceProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function ConstructionLayerDataProxy(param1:String)
      {
         super(param1,null);
      }
      
      public function CreateConstructionLayerVo(param1:BillboardObject, param2:Boolean = false) : ConstructionLayerVo
      {
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:int = 0;
         var _loc8_:PhaseDTO = null;
         var _loc9_:Boolean = false;
         var _loc10_:PhaseDTO = null;
         var _loc11_:ConfigPhaseDTO = null;
         var _loc3_:Vector.<ConstructionLayerStepVo> = new Vector.<ConstructionLayerStepVo>();
         var _loc5_:BillboardObjectVo = param1.billboardObjectVo;
         if((_loc5_) && _loc5_.buildingDTO && Boolean(_loc5_.buildingDTO.config))
         {
            if(param1 && _loc5_ && Boolean(_loc5_.configPlayfieldItemVo))
            {
               if(param2)
               {
                  if(param1.billboardObjectVo.isUnderConstruction())
                  {
                     _loc6_ = param1.billboardObjectVo.configPlayfieldItemVo;
                  }
                  else
                  {
                     _loc6_ = this.configProxy.getConfigPlayfieldItemById(param1.billboardObjectVo.buildingDTO.config.nextConfigId);
                  }
               }
               else
               {
                  _loc6_ = param1.billboardObjectVo.configPlayfieldItemVo;
               }
            }
            _loc7_ = -1;
            _loc9_ = false;
            for each(_loc10_ in _loc5_.activePhases)
            {
               for each(_loc11_ in _loc6_.constructionPhases)
               {
                  if(_loc10_.phaseId == _loc11_.phaseId)
                  {
                     _loc7_ = _loc11_.phaseOrderId;
                     _loc8_ = _loc10_;
                     _loc9_ = true;
                     break;
                  }
               }
               if(_loc9_)
               {
                  break;
               }
            }
            if(_loc6_)
            {
               _loc3_ = this.createStepsFromPhases(_loc6_.constructionPhases,_loc10_,_loc7_,param2);
            }
         }
         return new ConstructionLayerVo(_loc3_,param2,param1,this.resourcesProxy.realCurrency);
      }
      
      private function createStepsFromPhases(param1:Vector.<ConfigPhaseDTO>, param2:PhaseDTO, param3:int, param4:Boolean) : Vector.<ConstructionLayerStepVo>
      {
         var _loc6_:ConstructionLayerStepVo = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc13_:ConfigOutputDTO = null;
         var _loc14_:ConfigOutputDTO = null;
         var _loc5_:Vector.<ConstructionLayerStepVo> = new Vector.<ConstructionLayerStepVo>();
         for each(_loc7_ in param1)
         {
            if((_loc7_.phaseType != ServerPhaseTypes.CREATE_PLACE_NORMAL || param4) && _loc7_.phaseType != ServerPhaseTypes.CREATE_PLACE_PERMISSION && _loc7_.phaseType != ServerPhaseTypes.CREATE_ACTIVATE && _loc7_.phaseType != ServerPhaseTypes.INSTANT_CONSTRUCTION)
            {
               _loc6_ = new ConstructionLayerStepVo();
               if(_loc7_.phaseOrderId == param3)
               {
                  if(param2)
                  {
                     if(param2.initTime > 0 && param2.expirationTime > 0)
                     {
                        if(this.timerProxy.currentTimeStamp >= param2.expirationTime)
                        {
                           _loc6_.state = ConstructionLayerStepVo.STATE_DONE;
                        }
                        else
                        {
                           _loc6_.state = ConstructionLayerStepVo.STATE_RUNNING;
                        }
                        _loc6_.runningPhase = param2;
                     }
                     else if(_loc7_.durationConfig.duration <= 0)
                     {
                        _loc6_.state = ConstructionLayerStepVo.STATE_DONE;
                     }
                     else
                     {
                        _loc6_.state = ConstructionLayerStepVo.STATE_AVAILABLE;
                     }
                  }
                  _loc6_.currentTime = this.timerProxy.currentTimeStamp;
               }
               else if(_loc7_.phaseOrderId < param3)
               {
                  _loc6_.state = ConstructionLayerStepVo.STATE_DONE;
               }
               else if(_loc7_.phaseOrderId == param3 + 1)
               {
                  if(_loc5_.length == 0 || _loc5_[_loc5_.length - 1].state == ConstructionLayerStepVo.STATE_DONE)
                  {
                     _loc6_.state = ConstructionLayerStepVo.STATE_AVAILABLE;
                  }
                  else
                  {
                     _loc6_.state = ConstructionLayerStepVo.STATE_UNAVAILABLE;
                  }
               }
               else if(_loc7_.phaseOrderId > param3 + 1)
               {
                  _loc6_.state = ConstructionLayerStepVo.STATE_UNAVAILABLE;
               }
               _loc6_.duration = _loc7_.durationConfig.duration;
               if(_loc7_.phaseType != ServerPhaseTypes.CREATE_PLACE_NORMAL)
               {
                  if(Boolean(_loc7_.instantFinshOutput) && _loc7_.instantFinshOutput.length > 0)
                  {
                     for each(_loc14_ in _loc7_.instantFinshOutput)
                     {
                        if(Boolean(_loc14_.resourceConfig) && _loc14_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
                        {
                           _loc6_.instantFinishCost = _loc14_.outputAmount;
                        }
                     }
                  }
               }
               else
               {
                  _loc6_.instantFinishCost = 0;
               }
               _loc6_.phaseID = _loc7_.phaseId;
               _loc6_.isUpgrade = param4;
               _loc6_.rcStock = this.resourcesProxy.realCurrency;
               for each(_loc13_ in _loc7_.listEntryOutputs)
               {
                  if(_loc13_.outputAmount < 0)
                  {
                     _loc6_.configOutput = _loc13_;
                     if(_loc13_.goodConfig != null)
                     {
                        _loc6_.currentStock = this.goodsProxy.getCurrentStockOfGood(_loc13_.goodConfig.id);
                     }
                     if(_loc13_.resourceConfig != null)
                     {
                        _loc6_.currentStock = this.resourcesProxy.getResourceAmountByConstant(_loc13_.resourceConfig.type);
                     }
                     break;
                  }
               }
               _loc5_.push(_loc6_);
            }
         }
         _loc8_ = int(_loc5_.length);
         _loc9_ = 1;
         _loc10_ = 0;
         _loc11_ = 0;
         if(param4)
         {
            _loc9_ = 0;
            _loc10_ = 1;
         }
         var _loc12_:int = 0;
         while(_loc12_ < _loc8_)
         {
            _loc5_[_loc12_].stepIndex = _loc9_;
            _loc5_[_loc12_].numIndices = _loc8_ - _loc10_;
            _loc9_++;
            _loc11_ += _loc5_[_loc12_].instantFinishCost;
            _loc12_++;
         }
         if(param4 && _loc5_.length > 0)
         {
            _loc5_[0].instantFinishCost = _loc11_;
            _loc5_[0].displayInstantButton = false;
         }
         return _loc5_;
      }
      
      public function UpdateConstructionLayerVoResources(param1:ConstructionLayerVo) : void
      {
         var _loc4_:ConstructionLayerStepVo = null;
         var _loc2_:Number = this.resourcesProxy.realCurrency;
         var _loc3_:Number = this.timerProxy.currentTimeStamp;
         param1.rcStock = _loc2_;
         for each(_loc4_ in param1.constructionSteps)
         {
            if(_loc4_.configOutput)
            {
               if(_loc4_.configOutput.resourceConfig)
               {
                  _loc4_.currentStock = this.resourcesProxy.getResourceAmountByConstant(_loc4_.configOutput.resourceConfig.type);
               }
               else if(_loc4_.configOutput.goodConfig)
               {
                  _loc4_.currentStock = this.goodsProxy.getCurrentStockOfGood(_loc4_.configOutput.goodConfig.id);
               }
               _loc4_.rcStock = _loc2_;
               _loc4_.currentTime = _loc3_;
            }
         }
      }
      
      private function get goodsProxy() : PlayerGoodsStockProxy
      {
         if(this._goodsProxy == null)
         {
            this._goodsProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         }
         return this._goodsProxy;
      }
      
      private function get resourcesProxy() : PlayerResourceProxy
      {
         if(this._resourcesProxy == null)
         {
            this._resourcesProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._resourcesProxy;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(this._timerProxy == null)
         {
            this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._timerProxy;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._configProxy == null)
         {
            this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._configProxy;
      }
   }
}

