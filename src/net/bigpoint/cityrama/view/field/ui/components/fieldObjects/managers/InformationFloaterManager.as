package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import flash.events.Event;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.floater.FloaterVo;
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.mastery.BuildingMasteryProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloaterManager;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.observer.Notifier;
   
   public class InformationFloaterManager extends Notifier implements IInformationFloaterManager
   {
      
      public static const EMPTY_RESOURCE_AMOUNT:Number = 0.1;
      
      private var _optionsGlobalVars:OptionsGlobalVariables;
      
      private var _floaterObjectVo:IFloaterObjectVo;
      
      private var _container:Sprite;
      
      private var _billboardContainer:SmartObjectContainer;
      
      private var _information:Vector.<FloaterVo>;
      
      private var _addVector:Vector.<FloaterVo>;
      
      private var _subtractVector:Vector.<FloaterVo>;
      
      private var _destruction:Boolean;
      
      private var _isDirty:Boolean;
      
      private var _containerHeight:Number;
      
      public function InformationFloaterManager()
      {
         super();
         this._optionsGlobalVars = OptionsGlobalVariables.getInstance();
      }
      
      public function prepareInformationFloaterManager(param1:IFloaterObjectVo, param2:SmartObjectContainer) : void
      {
         this._floaterObjectVo = param1;
         this._billboardContainer = param2;
         this._container = new Sprite();
         if(this._billboardContainer == null)
         {
            this._billboardContainer = new SmartObjectContainer();
         }
         this._billboardContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.changeFloaterHeight);
         this.changeFloaterHeight(null);
      }
      
      private function changeFloaterHeight(param1:Event) : void
      {
         if(this._floaterObjectVo is BillboardObjectVo)
         {
            this._containerHeight = this._billboardContainer.height * -0.5;
         }
         else if(this._floaterObjectVo is PlaneObjectVo)
         {
            this._containerHeight = -20;
         }
      }
      
      public function invalidateInformationFloaterManager(param1:Boolean = false) : void
      {
         this.nullCheck("InformationFloaterManager, prepare before invalidate!");
         if(this._optionsGlobalVars.showFloater)
         {
            this._destruction = param1;
            if(this._containerHeight == 0)
            {
               this.changeFloaterHeight(null);
            }
            this.checkObjectVo();
         }
      }
      
      private function checkObjectVo() : void
      {
         var _loc1_:* = null;
         var _loc2_:FloaterVo = null;
         this._addVector = new Vector.<FloaterVo>();
         this._subtractVector = new Vector.<FloaterVo>();
         this._information = new Vector.<FloaterVo>();
         if(this._floaterObjectVo.informationFloaterPhase != null)
         {
            this._isDirty = true;
            this.prepareText();
            this.finalize();
         }
         else if(this._floaterObjectVo.informationFloaterCustomText != "" && this._floaterObjectVo.informationFloaterCustomText != null)
         {
            this._isDirty = true;
            _loc1_ = "<br><FONT Face=\'Arial Black\' Size=\'13\' Color=\'#ffffff\'>" + this._floaterObjectVo.informationFloaterCustomText + "</FONT>";
            _loc2_ = new FloaterVo(_loc1_);
            this._information.push(_loc2_);
            this.finalize();
            this._floaterObjectVo.informationFloaterCustomText = "";
         }
      }
      
      private function finalize() : void
      {
         var _loc1_:FloaterVo = null;
         var _loc2_:FloaterVo = null;
         for each(_loc1_ in this._subtractVector)
         {
            this._information.push(_loc1_);
         }
         for each(_loc2_ in this._addVector)
         {
            this._information.push(_loc2_);
         }
         this._isDirty = false;
         sendNotification(ApplicationNotificationConstants.SHOW_INFO_FLOATER,{
            "info":this._information,
            "obj":this._floaterObjectVo,
            "container":this._container,
            "height":this._containerHeight
         });
      }
      
      private function addAmountSignAndSortToVector(param1:String, param2:Boolean, param3:String = "#ffffff", param4:uint = 1854546) : void
      {
         var _loc5_:String = "";
         if(param2)
         {
            _loc5_ = "<FONT Face=\'Arial Black\' Size=\'18\' Color=\'" + param3 + "\'>+</FONT>" + param1;
            this._addVector.push(new FloaterVo(_loc5_,param4));
         }
         else
         {
            _loc5_ = param1;
            this._subtractVector.push(new FloaterVo(_loc5_,param4));
         }
      }
      
      private function prepareText() : void
      {
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:Vector.<ConfigOutputDTO> = null;
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:String = null;
         var _loc13_:Number = NaN;
         var _loc14_:ConfigOutputDTO = null;
         var _loc15_:ConfigOutputDTO = null;
         var _loc16_:NeedVo = null;
         var _loc17_:* = null;
         var _loc18_:ResidentialFieldObjectVo = null;
         if(this._floaterObjectVo.informationFloaterPhase != null)
         {
            _loc1_ = this._floaterObjectVo.informationFloaterPhase;
            _loc2_ = new Vector.<ConfigOutputDTO>();
            _loc4_ = 1;
            _loc5_ = 1;
            if(this._floaterObjectVo is BillboardObjectVo)
            {
               _loc4_ = (this._floaterObjectVo as BillboardObjectVo).happinessModifier;
               _loc5_ = (this._floaterObjectVo as BillboardObjectVo).energyModifier;
            }
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            _loc9_ = 0;
            _loc10_ = 0;
            _loc11_ = 0;
            if(this._floaterObjectVo is ResidentialFieldObjectVo)
            {
               _loc11_ = (this._floaterObjectVo as ResidentialFieldObjectVo).configPlayfieldItemVo.maxResidents * _loc4_;
               _loc12_ = (this._floaterObjectVo as ResidentialFieldObjectVo).currentResidentType;
               for each(_loc16_ in ResidentialFieldObjectVo(this._floaterObjectVo).residentialNeeds)
               {
                  if(_loc16_.isSatisfied)
                  {
                     _loc6_ += _loc16_.vcBoost;
                     _loc7_ += _loc16_.xpBoost;
                     _loc8_ += _loc16_.ppBoost;
                     _loc9_ += _loc16_.epBoost;
                  }
               }
               _loc7_ += _loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(this._floaterObjectVo as ResidentialFieldObjectVo,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
               _loc9_ += _loc9_ * BuildingMasteryProxy.getCompletePercentValueForTag(this._floaterObjectVo as ResidentialFieldObjectVo,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
               _loc8_ += _loc8_ * BuildingMasteryProxy.getCompletePercentValueForTag(this._floaterObjectVo as ResidentialFieldObjectVo,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
               _loc6_ += _loc6_ * BuildingMasteryProxy.getCompletePercentValueForTag(this._floaterObjectVo as ResidentialFieldObjectVo,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
               _loc7_ += _loc7_ * ImprovementProxy.getCompletePercentValueForTag(this._floaterObjectVo as ResidentialFieldObjectVo,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
               _loc9_ += _loc9_ * ImprovementProxy.getCompletePercentValueForTag(this._floaterObjectVo as ResidentialFieldObjectVo,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
               _loc8_ += _loc8_ * ImprovementProxy.getCompletePercentValueForTag(this._floaterObjectVo as ResidentialFieldObjectVo,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
               _loc6_ += _loc6_ * ImprovementProxy.getCompletePercentValueForTag(this._floaterObjectVo as ResidentialFieldObjectVo,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
               _loc7_ = Math.ceil(_loc7_);
               _loc9_ = Math.ceil(_loc9_);
               _loc8_ = Math.ceil(_loc8_);
               _loc6_ = Math.ceil(_loc6_);
            }
            for each(_loc14_ in _loc1_.listEntryOutputs)
            {
               if(this._floaterObjectVo is BoulderObjectVo)
               {
                  if((this._floaterObjectVo as BoulderObjectVo).phaseJustStarted)
                  {
                     if(_loc14_.outputAmount < 0)
                     {
                        _loc2_.push(_loc14_);
                     }
                  }
                  else if(_loc14_.outputAmount > 0)
                  {
                     _loc2_.push(_loc14_);
                  }
               }
               else if(_loc14_.outputAmount != 0)
               {
                  if(!this._destruction)
                  {
                     _loc2_.push(_loc14_);
                  }
                  else if(!(this._floaterObjectVo is DecorationFieldObjectVo) && !(this._floaterObjectVo is BoulderObjectVo) && !(this._floaterObjectVo is PlaneObjectVo))
                  {
                     if((this._floaterObjectVo as BillboardObjectVo).isUnderConstruction())
                     {
                        if(_loc14_.resourceConfig != null)
                        {
                           if(_loc14_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                           {
                              _loc2_.push(_loc14_);
                           }
                        }
                     }
                     else
                     {
                        _loc2_.push(_loc14_);
                     }
                  }
                  else
                  {
                     _loc2_.push(_loc14_);
                  }
               }
            }
            if(this._floaterObjectVo is BoulderObjectVo)
            {
               (this._floaterObjectVo as BoulderObjectVo).phaseJustStarted = false;
            }
            for each(_loc15_ in _loc2_)
            {
               _loc17_ = "";
               if(_loc15_.resourceConfig != null)
               {
                  switch(_loc15_.resourceConfig.type)
                  {
                     case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.virtualcurrency");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_REALCURRENCY:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.realcurrency");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_EXPERIENCE:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.experience");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_HAPPINESS_POSITIVE:
                     case ServerResConst.RESOURCE_HAPPINESS_NEGATIVE:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.mood");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_ENERGY_POSITIVE:
                     case ServerResConst.RESOURCE_ENERGY_NEGATIVE:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.energy");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_POPULATION:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_RICHMEN:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_WORKERS:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_ACADEMICS:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.productionpoints");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                        break;
                     case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                        _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.educationpoints");
                        _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                  }
                  _loc13_ = _loc15_.outputAmount;
                  if(_loc1_.phaseType == ServerPhaseTypes.RESIDENTIAL)
                  {
                     if(this._floaterObjectVo is IImprovable && this._floaterObjectVo is ResidentialFieldObjectVo)
                     {
                        _loc18_ = this._floaterObjectVo as ResidentialFieldObjectVo;
                        if(_loc15_.resourceConfig.type != ServerResConst.RESOURCE_EXPERIENCE && _loc13_ != EMPTY_RESOURCE_AMOUNT)
                        {
                           _loc13_ += _loc13_ * BuildingMasteryProxy.getCompletePercentValueForTag(_loc18_,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,_loc15_.resourceConfig.type);
                           _loc13_ += _loc13_ * ImprovementProxy.getCompletePercentValueForTag(_loc18_,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY);
                           _loc13_ = Math.ceil(_loc13_);
                        }
                        else if(_loc15_.resourceConfig.type == ServerResConst.RESOURCE_EXPERIENCE)
                        {
                           _loc13_ += _loc13_ * BuildingMasteryProxy.getCompletePercentValueForTag(_loc18_,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
                           _loc13_ += _loc13_ * ImprovementProxy.getCompletePercentValueForTag(_loc18_,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
                        }
                        else if(_loc13_ == EMPTY_RESOURCE_AMOUNT)
                        {
                           _loc13_ = 0;
                        }
                     }
                     if(_loc15_.resourceConfig != null && _loc15_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                     {
                        if(_loc12_ == ServerResConst.RESOURCE_RICHMEN)
                        {
                           _loc13_ = (_loc13_ + _loc6_) * _loc4_;
                        }
                        else
                        {
                           _loc13_ *= _loc4_;
                        }
                     }
                     if(_loc15_.resourceConfig != null && _loc15_.resourceConfig.type == ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                     {
                        if(_loc12_ == ServerResConst.RESOURCE_WORKERS)
                        {
                           _loc13_ = (_loc13_ + _loc8_) * _loc4_;
                        }
                        else
                        {
                           _loc13_ *= _loc4_;
                        }
                     }
                     if(_loc15_.resourceConfig != null && _loc15_.resourceConfig.type == ServerResConst.RESOURCE_EDUCATIONPOINTS)
                     {
                        if(_loc12_ == ServerResConst.RESOURCE_ACADEMICS)
                        {
                           _loc13_ = (_loc13_ + _loc9_) * _loc4_;
                        }
                        else
                        {
                           _loc13_ *= _loc4_;
                        }
                     }
                     if(_loc15_.resourceConfig != null && _loc15_.resourceConfig.type == ServerResConst.RESOURCE_EXPERIENCE)
                     {
                        _loc13_ = (_loc13_ + _loc7_) * _loc4_;
                        _loc13_ = Math.ceil(_loc13_);
                     }
                  }
                  if(_loc15_.resourceConfig.type == ServerResConst.RESOURCE_EXPERIENCE)
                  {
                     if(this._floaterObjectVo is BillboardObjectVo)
                     {
                        _loc10_ = _loc13_ * (this._floaterObjectVo as BillboardObjectVo).doubleBonusDayModifier;
                     }
                  }
                  if(_loc1_.phaseType == ServerPhaseTypes.EXPANSION && _loc15_.resourceConfig.type == ServerResConst.RESOURCE_EXPERIENCE)
                  {
                     if(this._floaterObjectVo is ExpansionFieldObjectVo)
                     {
                     }
                  }
                  if(_loc1_.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
                  {
                     if(_loc15_.resourceConfig != null && (_loc15_.resourceConfig.type == ServerResConst.RESOURCE_WORKERS || _loc15_.resourceConfig.type == ServerResConst.RESOURCE_RICHMEN || _loc15_.resourceConfig.type == ServerResConst.RESOURCE_ACADEMICS))
                     {
                        _loc13_ = _loc11_;
                     }
                  }
                  if(_loc15_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE || _loc15_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE)
                  {
                     _loc13_ *= -1;
                  }
                  if(_loc13_ < 0)
                  {
                     _loc13_ = Math.floor(_loc13_);
                  }
                  else
                  {
                     _loc13_ = Math.ceil(_loc13_);
                  }
                  if(_loc13_ != 0)
                  {
                     _loc17_ = "<FONT Face=\'Arial Black\' Size=\'25\' Color=\'#ffffff\'>" + _loc13_ + "</FONT>";
                     this.addAmountSignAndSortToVector(_loc17_ + "<br>" + _loc3_,_loc13_ > 0);
                  }
                  if(_loc10_ > 0)
                  {
                     _loc10_ = Math.ceil(_loc10_);
                     _loc3_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.experience");
                     _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#fff206\'>" + _loc3_ + "</FONT>";
                     _loc17_ = "<FONT Face=\'Arial Black\' Size=\'25\' Color=\'#fef165\'>" + _loc10_ + "</FONT>";
                     this.addAmountSignAndSortToVector(_loc17_ + "<br>" + _loc3_,_loc10_ > 0,"#fef165",5387796);
                     _loc10_ = 0;
                  }
               }
               else if(_loc15_.goodConfig != null)
               {
                  if(_loc15_.goodConfig.isEventGood)
                  {
                     if(this._floaterObjectVo is IEventDrop)
                     {
                        _loc3_ = ResourceManager.getInstance().getString("rcl.citysquarequests." + (this._floaterObjectVo as IEventDrop).currentEventLocaleId,"rcl.citysquarequests." + (this._floaterObjectVo as IEventDrop).currentEventLocaleId + ".goods.goodname." + _loc15_.goodConfig.localeId);
                        (this._floaterObjectVo as IEventDrop).currentEventLocaleId = "";
                     }
                  }
                  else
                  {
                     _loc3_ = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + _loc15_.goodConfig.localeId);
                  }
                  _loc3_ = "<FONT Face=\'Arial Black\' Size=\'13\' Color=\'#b9eefb\'>" + _loc3_ + "</FONT>";
                  _loc13_ = _loc15_.outputAmount;
                  if(_loc1_.phaseType == ServerPhaseTypes.PRODUCTION)
                  {
                     _loc13_ *= _loc5_;
                  }
                  if(_loc13_ < 1)
                  {
                     _loc13_ = Math.ceil(_loc13_);
                  }
                  else
                  {
                     _loc13_ = Math.floor(_loc13_);
                  }
                  if(_loc13_ != 0)
                  {
                     _loc17_ = "<FONT Face=\'Arial Black\' Size=\'25\' Color=\'#ffffff\'>" + _loc13_ + "</FONT>";
                     this.addAmountSignAndSortToVector(_loc17_ + "<br>" + _loc3_,_loc13_ > 0);
                  }
               }
            }
            this._floaterObjectVo.informationFloaterPhase = null;
         }
      }
      
      private function nullCheck(param1:String) : void
      {
         if(this._floaterObjectVo == null)
         {
            throw new RamaCityError(param1);
         }
      }
   }
}

