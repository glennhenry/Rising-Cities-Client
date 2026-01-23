package net.bigpoint.cityrama.model.field.fieldInfoLayer
{
   import as3isolib.display.IsoView;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import com.greensock.TweenMax;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.FlexGlobals;
   import mx.managers.ToolTipManager;
   import mx.styles.CSSStyleDeclaration;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.common.vo.ImageTextValueVO;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentialDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ShopDetailViewVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.ExpansionSaleEventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.factorys.InfrastructureDecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.DepartmentProfessionalComponentVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerAcademyVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerBoulderVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerCinemaVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerCitySquareVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerConfigPlayfieldItemVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerConstructionVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerDecorationVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerEmergencyVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerExpansionVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerInfrastructureBuildingVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerInfrastructureDecorationVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerPowerPlantVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerProductionVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerResidentialVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerScheduledDropVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerSecurityGradeVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerShopVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerTownHallVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.ModifierValueVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.SecurityStatusComponentVo;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CinemaFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PowerplantFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalSpecializationDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.PowerplantFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.InfrastructureDecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FieldInfoLayerProxy extends Proxy
   {
      
      public static const NAME:String = "FieldInfoLayerProxy";
      
      public static const INFOLAYER_HARVEST_READY:uint = 1;
      
      public static const INFOLAYER_HARVEST_WAIT:uint = 2;
      
      public static const INFOLAYER_UPDATE_READY:uint = 3;
      
      private static const NOTIFICATION_DELAY_FAST:Number = 0.3;
      
      private static const NOTIFICATION_DELAY_SLOW:Number = 0.6;
      
      private static const LIB_PATH:String = "gui_infield_gui_infolayer";
      
      private static const LIB_ICON_PATH:String = "gui_resources_icons";
      
      private static const ICON_NEEDS:String = "layer_needs_icon";
      
      private static const ICON_HAPPY:String = "layer_happyness_icon";
      
      private static const ICON_SAD:String = "layer_sad_icon";
      
      private static const ICON_ENERGY:String = "layer_energy_icon";
      
      private static const ICON_COIN:String = "layer_cc_icon";
      
      private static const ICON_PRODUCT:String = "product_icon";
      
      private static const ICON_BIG_ALERT:String = "infolayer_icon_attention";
      
      private static const ICON_BIG_INFO:String = "infolayer_icon_info";
      
      private static const ICON_BIG_UPGRADE:String = "infolayer_icon_upgrade";
      
      private static const ICON_BIG_EMERGENCY:String = "infolayer_icon_emergency";
      
      private static const ICON_BIG_X:String = "infolayer_icon_demolish";
      
      private static const ICON_BONUSDAY:String = "infolayer_icon_bonusDay";
      
      private static const ICON_LOCKED:String = "levellocked";
      
      private var _locaTextDict:Dictionary;
      
      private var _colorGreen:uint;
      
      private var _colorRed:uint;
      
      private var _colorText:uint;
      
      private var _colorOutComeText:uint;
      
      private var _timerProxy:TimerProxy;
      
      private var _globalBalanceProxy:GlobalBalanceProxy;
      
      private var _expansionProxy:PlayfieldExpansionsProxy;
      
      private var _eventProxy:EventProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _featureProxy:FeatureProxy;
      
      private var _mainLayerProxy:MainLayerProxy;
      
      private var _securityMatrixProxy:SecurityMatrixProxy;
      
      private var _emergencyLayerProxy:EmergencyLayerProxy;
      
      private var _expansionSaleProxy:ExpansionSaleEventProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _hmMed:SecurityGradeHeatMapMediator;
      
      private var _isoView:IsoView;
      
      private var _interactiveObject:IInteraction;
      
      public function FieldInfoLayerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         ToolTipManager.scrubDelay = 0.1;
         ToolTipManager.showDelay = 0.1;
      }
      
      private static function fillUpInfrastructureDecorationVo(param1:InfrastructureDecorationFieldObjectVo) : FieldInfoLayerInfrastructureDecorationVo
      {
         var _loc4_:String = null;
         var _loc2_:FieldInfoLayerInfrastructureDecorationVo = new FieldInfoLayerInfrastructureDecorationVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.headerText = getBuildingName(param1);
         var _loc3_:ArrayCollection = new ArrayCollection();
         for each(_loc4_ in param1.department)
         {
            _loc3_.addItem(_loc4_);
         }
         _loc2_.departmentList = _loc3_;
         _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
         _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.device.info");
         return _loc2_;
      }
      
      private static function getSecurityVector(param1:EmergencyZoneLayerVo) : Vector.<SecurityStatusComponentVo>
      {
         var _loc2_:Vector.<SecurityStatusComponentVo> = new Vector.<SecurityStatusComponentVo>();
         var _loc3_:Object = {};
         _loc3_.checks = true;
         if(param1.fireGrade != -1)
         {
            _loc3_.dept = ServerTagConstants.FIRE_DEPARTMENT;
            _loc3_.req = param1.fireRequiredGrade;
            _loc3_.grade = param1.fireGrade;
            _loc2_.push(new SecurityStatusComponentVo(_loc3_));
         }
         if(param1.policeGrade != -1)
         {
            _loc3_.dept = ServerTagConstants.POLICE_DEPARTMENT;
            _loc3_.req = param1.policeRequiredGrade;
            _loc3_.grade = param1.policeGrade;
            _loc2_.push(new SecurityStatusComponentVo(_loc3_));
         }
         if(param1.hospitalGrade != -1)
         {
            _loc3_.dept = ServerTagConstants.HOSPITAL;
            _loc3_.req = param1.hospitalRequiredGrade;
            _loc3_.grade = param1.hospitalGrade;
            _loc2_.push(new SecurityStatusComponentVo(_loc3_));
         }
         return _loc2_;
      }
      
      private static function fillUpDecoVo(param1:DecorationFieldObjectVo) : FieldInfoLayerDecorationVo
      {
         var _loc2_:FieldInfoLayerDecorationVo = new FieldInfoLayerDecorationVo();
         _loc2_.preHeaderText = "";
         _loc2_.headerText = getBuildingName(param1);
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
         return _loc2_;
      }
      
      private static function getBuildingName(param1:BillboardObjectVo) : String
      {
         var _loc2_:* = "rcl.playfielditems.name";
         _loc2_ = LocaUtils.getString(_loc2_,_loc2_ + "." + param1.configPlayfieldItemVo.localeId);
         if(!_loc2_ || _loc2_ == "")
         {
            _loc2_ = "locaID " + param1.configPlayfieldItemVo.localeId + " unknown";
         }
         return _loc2_;
      }
      
      private static function getBuildingNameByConfig(param1:ConfigPlayfieldItemDTO) : String
      {
         var _loc2_:* = "rcl.playfielditems.name";
         _loc2_ = LocaUtils.getString(_loc2_,_loc2_ + "." + param1.localeId);
         if(!_loc2_ || _loc2_ == "")
         {
            _loc2_ = "locaID " + param1.localeId + " unknown";
         }
         return _loc2_;
      }
      
      public static function getPhaseOutputCurrency(param1:BillboardObjectVo, param2:String) : Number
      {
         var _loc4_:PhaseDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc3_:Number = 0;
         for each(_loc4_ in param1.activePhases)
         {
            if(_loc4_.config.phaseType == param2)
            {
               for each(_loc5_ in _loc4_.config.listEntryOutputs)
               {
                  if(_loc5_.resourceConfig)
                  {
                     _loc3_ = _loc5_.outputAmount;
                  }
               }
            }
         }
         return _loc3_;
      }
      
      private static function getResidentialIconValueList(param1:ResidentialDetailViewVo) : ArrayList
      {
         var _loc2_:ArrayList = new ArrayList();
         _loc2_.addItem(param1.rentalIncomeVo);
         _loc2_.addItem(param1.needIncomeVo);
         return _loc2_;
      }
      
      private static function getProductionIconValueList(param1:ProductionDetailViewVo) : ArrayList
      {
         var _loc2_:ArrayList = new ArrayList();
         if(param1.productionOptions[param1.currentProductionIndex].productionIncome.maxAmount > 0)
         {
            _loc2_.addItem(param1.productionOptions[param1.currentProductionIndex].productionIncome);
         }
         return _loc2_;
      }
      
      private static function getEnergyValue(param1:BillboardObjectVo) : Number
      {
         var _loc2_:ConfigOutputDTO = null;
         for each(_loc2_ in param1.configPlayfieldItemVo.globalBuffs)
         {
            if(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_POSITIVE)
            {
               return _loc2_.outputAmount;
            }
            if(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE)
            {
               return _loc2_.outputAmount * -1;
            }
         }
         return 0;
      }
      
      private static function getMoodValue(param1:BillboardObjectVo) : Number
      {
         var _loc2_:ConfigOutputDTO = null;
         for each(_loc2_ in param1.configPlayfieldItemVo.globalBuffs)
         {
            if(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
            {
               return _loc2_.outputAmount;
            }
            if(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE)
            {
               return _loc2_.outputAmount * -1;
            }
         }
         return 0;
      }
      
      public static function getPhaseOutputGoods(param1:BillboardObjectVo, param2:String) : Number
      {
         var _loc4_:PhaseDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc3_:Number = 0;
         for each(_loc4_ in param1.activePhases)
         {
            if(_loc4_.config.phaseType == param2)
            {
               for each(_loc5_ in _loc4_.config.listEntryOutputs)
               {
                  if(_loc5_.goodConfig)
                  {
                     if(_loc5_.type == ServerOutputConstants.GOOD)
                     {
                        _loc3_ = _loc5_.outputAmount;
                     }
                  }
               }
            }
         }
         return _loc3_;
      }
      
      private static function mockData(param1:int) : ResidentialNeedVo
      {
         return new ResidentialNeedVo("gui_popups_smallGoodIcons","small_" + param1,true,true,1);
      }
      
      override public function onRegister() : void
      {
         var _loc1_:CSSStyleDeclaration = FlexGlobals.topLevelApplication.styleManager.getStyleDeclaration(".newValueColorFormats");
         this._colorGreen = _loc1_.getStyle("grasgreen");
         this._colorRed = _loc1_.getStyle("deepred");
         this._colorText = _loc1_.getStyle("silvergray");
         this._colorOutComeText = _loc1_.getStyle("slateblue");
         this._locaTextDict = new Dictionary();
         this._locaTextDict[ICON_HAPPY] = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.happyness");
         this._locaTextDict[ICON_SAD] = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.happyness");
         this._locaTextDict[ICON_COIN] = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.yield");
         this._locaTextDict[ICON_ENERGY] = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.energy");
         this._locaTextDict[ICON_PRODUCT] = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.units");
         this._locaTextDict[ICON_NEEDS] = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.needs.small");
         this._securityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._globalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         this._mainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         this._emergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         this._expansionProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         this._expansionSaleProxy = facade.retrieveProxy(ExpansionSaleEventProxy.NAME) as ExpansionSaleEventProxy;
         this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
      }
      
      public function set interactiveObject(param1:IInteraction) : void
      {
         TweenMax.killDelayedCallsTo(this.timeOutHandler);
         var _loc2_:Number = NOTIFICATION_DELAY_FAST;
         if(!OptionsGlobalVariables.getInstance().fasterNotification)
         {
            _loc2_ = NOTIFICATION_DELAY_SLOW;
         }
         if(param1)
         {
            this._interactiveObject = param1;
            TweenMax.delayedCall(_loc2_,this.timeOutHandler);
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
         }
      }
      
      private function timeOutHandler() : void
      {
         var _loc1_:BillboardObject = null;
         if(this._interactiveObject is BillboardObject)
         {
            _loc1_ = this._interactiveObject as BillboardObject;
            if(this.heatmapMediator.currentViewedType == "")
            {
               if(!_loc1_.billboardObjectVo.hasEmergency())
               {
                  if(_loc1_ is ResidentialFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_RESIDENTIAL,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is ProductionFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PRODUCTION,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is InfrastructureDecorationFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_DECORATION,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is DecorationFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_DECORATION,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is PowerplantFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_POWERPLANT,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is ExpansionFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EXPANSION,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is ShopFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_NEEDSHOP,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is BoulderFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_BOULDER,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is CitySquareFieldObject)
                  {
                     if((_loc1_ as CitySquareFieldObject).citySquareFieldObjectVo.currentEventState != CitySquareFieldObjectVo.FINISHED)
                     {
                        sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EVENT_SQUARE,this._interactiveObject);
                     }
                     return;
                  }
                  if(_loc1_ is TownHallFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_TOWNHALL,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is InfrastructureBuildingFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_BUILDING,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is AcademyFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_ACADEMY,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is MysteryBuildingFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_MYSTERYBUILDING,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is CinemaFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_CINEMA,this._interactiveObject);
                     return;
                  }
                  if(_loc1_ is ScheduledDropFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SCHEDULED_DROP,this._interactiveObject);
                     return;
                  }
               }
               else if(!(this._interactiveObject as BillboardObject).billboardObjectVo.emergencyInProgress)
               {
                  sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EMERGENCY,this._interactiveObject);
                  return;
               }
            }
            else
            {
               if(_loc1_ is ResidentialFieldObject || _loc1_ is ShopFieldObject || _loc1_ is ProductionFieldObject || _loc1_ is PowerplantFieldObject)
               {
                  sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SECURITY_GRADE,this._interactiveObject);
                  return;
               }
               if(_loc1_ is ExpansionFieldObject)
               {
                  sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EXPANSION,this._interactiveObject);
                  return;
               }
            }
         }
      }
      
      public function getVoForView(param1:BillboardObjectVo, param2:BillboardObject = null) : Object
      {
         if(this.heatmapMediator.currentViewedType == "")
         {
            if(Boolean(param1) && !param1.hasEmergency())
            {
               if(param1.isUnderConstruction() && !param1.isReadyToInaugurate)
               {
                  return this.fillUpConstructionVo(param1,param2);
               }
               if(param1 is InfrastructureBuildingFieldObjectVo)
               {
                  return this.fillUpInfrastructureBuildingVo(param1 as InfrastructureBuildingFieldObjectVo);
               }
               if(param1 is InfrastructureDecorationFieldObjectVo)
               {
                  return fillUpInfrastructureDecorationVo(param1 as InfrastructureDecorationFieldObjectVo);
               }
               if(param1 is ResidentialFieldObjectVo)
               {
                  return this.fillUpResidentialVo(param1 as ResidentialFieldObjectVo);
               }
               if(param1 is ProductionFieldObjectVo)
               {
                  return this.fillUpProductionVo(param1 as ProductionFieldObjectVo);
               }
               if(param1 is ShopFieldObjectVo)
               {
                  return this.fillUpShopVo(param1 as ShopFieldObjectVo);
               }
               if(param1 is DecorationFieldObjectVo)
               {
                  return fillUpDecoVo(param1 as DecorationFieldObjectVo);
               }
               if(param1 is PowerplantFieldObjectVo)
               {
                  return this.fillUpPowerVo(param1 as PowerplantFieldObjectVo);
               }
               if(param1 is BoulderObjectVo)
               {
                  return this.fillUpBoulderVo(param1 as BoulderObjectVo);
               }
               if(param1 is ExpansionFieldObjectVo)
               {
                  return this.fillUpExpansionVo(param1 as ExpansionFieldObjectVo);
               }
               if(param1 is CitySquareFieldObjectVo)
               {
                  return this.fillUpCitySquareVo(param1 as CitySquareFieldObjectVo);
               }
               if(param1 is AcademyFieldObjectVo)
               {
                  return this.fillUpAcademyVo(param1 as AcademyFieldObjectVo);
               }
               if(param1 is SpecialFieldObjectVo)
               {
                  if(param1 is TownHallFieldObjectVo)
                  {
                     return this.fillUpTownHallVo(param1 as SpecialFieldObjectVo);
                  }
                  if(param1 is CinemaFieldObjectVo)
                  {
                     return this.fillUpCinemaVo(param1 as CinemaFieldObjectVo);
                  }
                  if(param1 is ScheduledDropFieldObjectVo)
                  {
                     return this.fillUpScheduledDropVo(param1 as ScheduledDropFieldObjectVo);
                  }
               }
            }
            else if(Boolean(param1) && param1.hasEmergency())
            {
               return this.fillUpEmergencyVo(param1);
            }
         }
         else
         {
            if(param1 is ResidentialFieldObjectVo || param1 is ShopFieldObjectVo || param1 is ProductionFieldObjectVo || param1 is PowerplantFieldObjectVo)
            {
               return this.fillUpSecurityGradeVo(param1 as BillboardObjectVo);
            }
            if(param1 is ExpansionFieldObjectVo)
            {
               return this.fillUpExpansionVo(param1 as ExpansionFieldObjectVo);
            }
         }
         return null;
      }
      
      public function getVoForConfig(param1:ConfigPlayfieldItemDTO) : Object
      {
         return this.fillUpConfigPlayfieldItemVo(param1);
      }
      
      private function fillUpConfigPlayfieldItemVo(param1:ConfigPlayfieldItemDTO) : FieldInfoLayerConfigPlayfieldItemVo
      {
         var _loc2_:FieldInfoLayerConfigPlayfieldItemVo = new FieldInfoLayerConfigPlayfieldItemVo(param1);
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.headerText = getBuildingNameByConfig(param1);
         return _loc2_;
      }
      
      private function fillUpSecurityGradeVo(param1:BillboardObjectVo) : FieldInfoLayerSecurityGradeVo
      {
         var _loc2_:FieldInfoLayerSecurityGradeVo = new FieldInfoLayerSecurityGradeVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.headerText = getBuildingName(param1);
         _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.heat.info");
         var _loc3_:Vector.<SecurityStatusComponentVo> = new Vector.<SecurityStatusComponentVo>();
         var _loc4_:Object = {};
         _loc4_.checks = false;
         _loc4_.dept = ServerTagConstants.FIRE_DEPARTMENT;
         _loc4_.grade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.FIRE_DEPARTMENT);
         if(_loc4_.grade != -1)
         {
            _loc3_.push(new SecurityStatusComponentVo(_loc4_));
         }
         _loc4_.dept = ServerTagConstants.POLICE_DEPARTMENT;
         _loc4_.grade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.POLICE_DEPARTMENT);
         if(_loc4_.grade != -1)
         {
            _loc3_.push(new SecurityStatusComponentVo(_loc4_));
         }
         _loc4_.dept = ServerTagConstants.HOSPITAL;
         _loc4_.grade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.HOSPITAL);
         if(_loc4_.grade != -1)
         {
            _loc3_.push(new SecurityStatusComponentVo(_loc4_));
         }
         _loc2_.securityGrades = _loc3_;
         return _loc2_;
      }
      
      private function fillUpInfrastructureBuildingVo(param1:InfrastructureBuildingFieldObjectVo) : FieldInfoLayerInfrastructureBuildingVo
      {
         var _loc2_:FieldInfoLayerInfrastructureBuildingVo = new FieldInfoLayerInfrastructureBuildingVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.headerText = getBuildingName(param1);
         _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.department.info");
         _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
         _loc2_.departmentProfessionalData = this.getDepartmentProfessionals(param1);
         return _loc2_;
      }
      
      private function fillUpAcademyVo(param1:AcademyFieldObjectVo) : FieldInfoLayerAcademyVo
      {
         var _loc3_:ProfessionalDTO = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:TimerBarComponentVo = null;
         var _loc2_:FieldInfoLayerAcademyVo = new FieldInfoLayerAcademyVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.headerText = getBuildingName(param1);
         if(!param1.isUnderConstruction() && param1.buildingDTO.professionals && param1.buildingDTO.professionals.length > 0)
         {
            _loc3_ = param1.buildingDTO.professionals[0];
            _loc2_.currentTraineeConfig = _loc3_;
            _loc4_ = LocaUtils.getString("rcl.professions.nameconvention","rcl.professions.nameconvention.fistnamelastname");
            _loc5_ = _loc3_.gender == 1 ? "male" : "female";
            _loc6_ = LocaUtils.getString("rcl.professions.firstnames." + _loc5_,"rcl.professions.firstnames." + _loc5_ + "." + _loc3_.name);
            _loc7_ = LocaUtils.getString("rcl.professions.surnames." + _loc5_,"rcl.professions.surnames." + _loc5_ + "." + _loc3_.surname);
            _loc2_.traineeName = StringUtil.substitute(_loc4_,_loc6_,_loc7_);
         }
         _loc2_.modifier = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
         switch(param1.currentAcademyMode)
         {
            case AcademyFieldObjectVo.ACADEMY_MODE_START:
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.start");
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.info.trainee");
               _loc2_.layerMode = INFOLAYER_HARVEST_READY;
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
               break;
            case AcademyFieldObjectVo.ACADEMY_MODE_WAIT:
               _loc2_.preHeaderText = "";
               _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.info.training");
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
               _loc8_ = this.getPhaseInfo(param1,ServerPhaseTypes.PRODUCTION);
               _loc2_.harvestProgressVo = _loc8_;
               break;
            case AcademyFieldObjectVo.ACADEMY_MODE_FINISH:
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.finish");
               _loc2_.layerMode = INFOLAYER_HARVEST_READY;
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.info.finished");
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
         }
         return _loc2_;
      }
      
      private function fillUpEmergencyVo(param1:BillboardObjectVo) : FieldInfoLayerEmergencyVo
      {
         var _loc4_:EmergencyMiniLayerProxy = null;
         var _loc2_:FieldInfoLayerEmergencyVo = new FieldInfoLayerEmergencyVo();
         _loc2_.emergencyStatus = param1.emergencyState;
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.headerText = getBuildingName(param1);
         if(param1.emergencyState == EmergencyConstants.EMERGENCY_STATUS_STARTED)
         {
            var _loc3_:EmergencyZoneLayerVo = this._emergencyLayerProxy.getEmergencyZoneLayerVo(param1);
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_EMERGENCY;
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.start");
            _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.info.zones");
            _loc2_.securityData = getSecurityVector(null);
            _loc2_.timerVo = null.timerData;
         }
         else
         {
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
            if(param1.emergencyState == EmergencyConstants.EMERGENCY_STATUS_FAIL)
            {
               _loc4_ = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.fail");
               _loc2_.damageData = _loc4_.getEmergencyDamagedVo(param1);
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.info.fail");
            }
            else if(param1.emergencyState == EmergencyConstants.EMERGENCY_STATUS_SUCCESS)
            {
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.success");
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.info.success");
            }
         }
         return _loc2_;
      }
      
      private function fillUpCinemaVo(param1:CinemaFieldObjectVo) : FieldInfoLayerCinemaVo
      {
         var _loc2_:FieldInfoLayerCinemaVo = new FieldInfoLayerCinemaVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.headerText = getBuildingName(param1);
         if(param1.videoAvailable)
         {
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.preHeader.available");
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
            _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.text.available");
         }
         else
         {
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.preHeader.unAvailable");
            if(param1.disabled)
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_X;
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.preHeader.disabled");
            }
            else if(param1.inMaintenance)
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_X;
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.preHeader.maintenance");
            }
            else
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.text.unAvailable");
            }
         }
         _loc2_.moodEnergyModifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
         return _loc2_;
      }
      
      private function fillUpScheduledDropVo(param1:ScheduledDropFieldObjectVo) : FieldInfoLayerScheduledDropVo
      {
         var _loc2_:FieldInfoLayerScheduledDropVo = new FieldInfoLayerScheduledDropVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.headerText = getBuildingName(param1);
         if(param1.isHarvestReady)
         {
            _loc2_.flavourText = this.getScheduledVoFlavourText(param1,true);
            _loc2_.showHarvestProgress = false;
         }
         else
         {
            _loc2_.flavourText = this.getScheduledVoFlavourText(param1,false);
            _loc2_.showHarvestProgress = true;
            _loc2_.harvestProgress = this.getPhaseInfo(param1,ServerPhaseTypes.RANDOM_REWARD_HARVEST);
         }
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         var _loc3_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         if(Boolean(_loc3_) && _loc3_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BONUSDAY;
         }
         return _loc2_;
      }
      
      private function getScheduledVoFlavourText(param1:ScheduledDropFieldObjectVo, param2:Boolean) : String
      {
         if(param2)
         {
            switch(param1.tagType)
            {
               case ServerTagConstants.CHRISTMAS_TREE:
                  return LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.christmastree.text.harvestready");
               case ServerTagConstants.CLIENT_OLYMPIC_STADIUM:
                  return LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.olympicStadium.text.harvestready");
            }
         }
         else
         {
            switch(param1.tagType)
            {
               case ServerTagConstants.CHRISTMAS_TREE:
                  return LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.christmastree.text.untilnext");
               case ServerTagConstants.CLIENT_OLYMPIC_STADIUM:
                  return LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.olympicStadium.text.untilnext");
            }
         }
         return "";
      }
      
      private function fillUpConstructionVo(param1:BillboardObjectVo, param2:BillboardObject = null) : FieldInfoLayerConstructionVo
      {
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:PhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:MiniLayerProxy = null;
         var _loc3_:FieldInfoLayerConstructionVo = new FieldInfoLayerConstructionVo();
         _loc3_.icon_dynaLibName = LIB_PATH;
         _loc3_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc3_.preHeaderText = "";
         if(param1 is TownHallFieldObjectVo)
         {
            _loc3_.headerText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.name");
         }
         else
         {
            _loc3_.headerText = getBuildingName(param1);
         }
         _loc3_.constructionMode = this.checkConstructionPhase(param1);
         _loc3_.moveInMode = this.checkMoveInPhase(param1);
         if(_loc3_.moveInMode)
         {
            _loc3_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
         }
         if(_loc3_.constructionMode || _loc3_.moveInMode)
         {
            _loc3_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
         }
         _loc3_.harvestProgressVo = this.getPhaseInfo(param1,ServerPhaseTypes.CREATE_CONSTRUCTION);
         if(_loc3_.harvestProgressVo.cycleLength <= 0)
         {
            _loc3_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
         }
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         for each(_loc7_ in param1.activePhases)
         {
            if(_loc7_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc7_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION || _loc7_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL)
            {
               _loc6_ = _loc7_.config;
            }
         }
         if(_loc6_)
         {
            for each(_loc8_ in param1.configPlayfieldItemVo.constructionPhases)
            {
               if(_loc8_.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc8_.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
               {
                  _loc4_++;
                  if(_loc8_.phaseOrderId <= _loc6_.phaseOrderId)
                  {
                     _loc5_++;
                  }
               }
            }
         }
         if(_loc4_ >= _loc5_ && Boolean(_loc4_))
         {
            _loc3_.stepLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.step",[_loc5_,_loc4_]);
         }
         if(param2)
         {
            _loc9_ = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
            _loc3_.miniLayerVo = _loc9_.getConstructionVo(param2);
         }
         return _loc3_;
      }
      
      private function fillUpTownHallVo(param1:SpecialFieldObjectVo) : FieldInfoLayerTownHallVo
      {
         var _loc2_:FieldInfoLayerTownHallVo = new FieldInfoLayerTownHallVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.headerText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.name");
         _loc2_.preHeaderText = "";
         _loc2_.showHarvestProgress = !param1.isHarvestReady;
         _loc2_.harvestProgress = this.getPhaseInfo(param1,ServerPhaseTypes.RANDOM_REWARD_HARVEST);
         if(!param1.isReadyForUpgrade() && !param1.isReadyToInaugurate)
         {
            _loc2_.flavourText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.flavour.normal");
            _loc2_.levelText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.upgradeLevel",[param1.currentLevel]);
         }
         else if(param1.isReadyToInaugurate && !param1.isReadyForUpgrade())
         {
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
            _loc2_.flavourText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.flavour.inaugurate");
         }
         else if(param1.isReadyForUpgrade())
         {
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_UPGRADE;
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.residential_upgrade_state");
            _loc2_.flavourText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.flavour.normal");
            _loc2_.levelText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.upgradeLevel",[param1.currentLevel]);
         }
         var _loc3_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         if(Boolean(_loc3_) && _loc3_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BONUSDAY;
         }
         return _loc2_;
      }
      
      private function fillUpCitySquareVo(param1:CitySquareFieldObjectVo) : FieldInfoLayerCitySquareVo
      {
         var _loc3_:TimerBarComponentVo = null;
         var _loc4_:EventQuestVo = null;
         var _loc2_:FieldInfoLayerCitySquareVo = new FieldInfoLayerCitySquareVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.headerText = getBuildingName(param1);
         _loc2_.preHeaderText = "";
         _loc2_.eventState = param1.currentEventState;
         if(param1.currentEventState == CitySquareFieldObjectVo.NONE)
         {
            _loc2_.eventLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.eventSquare.noEvent");
            return _loc2_;
         }
         if(param1.currentEventState == CitySquareFieldObjectVo.AVAILIBLE)
         {
            _loc2_.eventLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.eventSquare.newEvent");
            _loc3_ = new TimerBarComponentVo();
            _loc3_.startTime = this._eventProxy.availableEventQuestStartTime;
            _loc3_.currentTime = this._timerProxy.currentTimeStamp;
            _loc3_.cycleLength = this._eventProxy.availableEventQuestTotalDuration;
            _loc3_.targetTime = this._eventProxy.targetAvailableTime;
            _loc3_.waitingForStart = false;
            _loc2_.harvestProgress = _loc3_;
            return _loc2_;
         }
         if(param1.currentEventState == CitySquareFieldObjectVo.RUNNING)
         {
            _loc2_.eventLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.eventSquare.eventTime");
            _loc3_ = new TimerBarComponentVo();
            _loc3_.startTime = this._eventProxy.runningEventQuestStartTime;
            _loc3_.currentTime = param1.currentTimeStamp;
            _loc3_.cycleLength = this._eventProxy.runningEventQuestTotalDuration;
            _loc3_.targetTime = this._eventProxy.targetRunningTime;
            _loc3_.waitingForStart = false;
            _loc2_.harvestProgress = _loc3_;
         }
         if(param1.currentEventState == CitySquareFieldObjectVo.EXPIRED)
         {
            _loc4_ = this._eventProxy.expiredEventQuest;
            _loc2_.eventLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.eventSquare.eventOvertime");
            _loc3_ = new TimerBarComponentVo();
            _loc3_.startTime = _loc4_.quests[0].questDto.endTimeStamp;
            _loc3_.cycleLength = this._configProxy.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
            _loc3_.targetTime = _loc3_.startTime + _loc3_.cycleLength;
            _loc3_.currentTime = this._timerProxy.currentTimeStamp;
            _loc3_.waitingForStart = false;
            _loc2_.harvestProgress = _loc3_;
         }
         return _loc2_;
      }
      
      private function fillUpExpansionVo(param1:ExpansionFieldObjectVo) : FieldInfoLayerExpansionVo
      {
         var _loc2_:FieldInfoLayerExpansionVo = new FieldInfoLayerExpansionVo();
         var _loc3_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         _loc2_.isLocked = this._resourceProxy.userLevel < _loc3_.expansionBuyUnlockLevel;
         _loc2_.unlockLevel = _loc3_.expansionBuyUnlockLevel;
         _loc2_.onSale = this._expansionSaleProxy.getIsExpansionOnSale(param1.configOrigin);
         _loc2_.icon_dynaLibName = LIB_PATH;
         if(_loc2_.isLocked)
         {
            _loc2_.icon_dynaBmpSourceName = ICON_LOCKED;
         }
         else
         {
            _loc2_.icon_dynaBmpSourceName = _loc2_.onSale ? "infolayer_icon_sale" : ICON_BIG_INFO;
         }
         _loc2_.headerText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.name");
         _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.buy");
         _loc2_.secretText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.secretBuilding");
         _loc2_.hasSecretBuilding = param1.configOrigin.initialPlayfieldItems.length > 0;
         _loc2_.midText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.or");
         _loc2_.realCurrencyCost = LocaUtils.getThousendSeperatedNumber(this._expansionProxy.getRCExpansionCosts(param1.configOrigin));
         _loc2_.saleTimeLeft = this._expansionSaleProxy.getExpansionsaleTimeLeft(param1.configOrigin);
         _loc2_.saleTimeTotal = this._expansionSaleProxy.getExpansionsaleTimeTotal(param1.configOrigin);
         _loc2_.discountedRealCurrencyCost = LocaUtils.getThousendSeperatedNumber(this._expansionSaleProxy.getRCExpansionCosts(param1.configOrigin));
         _loc2_.virtualCurrencyCost = LocaUtils.getThousendSeperatedNumber(this._expansionProxy.getVCExpansionCosts(param1.configOrigin));
         return _loc2_;
      }
      
      private function fillUpBoulderVo(param1:BoulderObjectVo) : FieldInfoLayerBoulderVo
      {
         var _loc2_:FieldInfoLayerBoulderVo = new FieldInfoLayerBoulderVo();
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
         if(param1.isStreetBoulder)
         {
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.streetboulder_destroy");
         }
         else
         {
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.boulder_destroy");
         }
         if(param1.isEventBoulder)
         {
            _loc2_.headerText = LocaUtils.getString("rcl.citysquarequests." + this._eventProxy.currentRunningEventQuestLocaleId,"rcl.citysquarequests." + this._eventProxy.currentRunningEventQuestLocaleId + ".boulder.bouldername." + param1.configPlayfieldItemVo.localeId);
         }
         else
         {
            _loc2_.headerText = getBuildingName(param1);
         }
         _loc2_.demolitionCosts = param1.demolitionCosts;
         _loc2_.vcStock = this._resourceProxy.ingameCurrency;
         if(!_loc2_.affordable)
         {
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_X;
            _loc2_.preHeaderText = null;
         }
         return _loc2_;
      }
      
      private function fillUpPowerVo(param1:PowerplantFieldObjectVo) : FieldInfoLayerPowerPlantVo
      {
         var _loc2_:FieldInfoLayerPowerPlantVo = new FieldInfoLayerPowerPlantVo();
         if(!param1.isConnectedToStreet)
         {
            _loc2_.preHeaderText = "";
            _loc2_.headerText = getBuildingName(param1);
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
            _loc2_.harvestProgressVo = null;
         }
         _loc2_.constructionMode = this.checkConstructionPhase(param1);
         _loc2_.moveInMode = this.checkMoveInPhase(param1);
         _loc2_.headerText = getBuildingName(param1);
         _loc2_.preHeaderText = "";
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.harvestProgressVo = null;
         _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
         if(param1.isConnectedToStreet && !_loc2_.moveInMode && !_loc2_.constructionMode)
         {
            return _loc2_;
         }
         if(param1.isConnectedToStreet)
         {
            if(_loc2_.constructionMode)
            {
               var _loc3_:TimerBarComponentVo = this.getPhaseInfo(param1,ServerPhaseTypes.CREATE_CONSTRUCTION);
               if(null.cycleLength <= 0)
               {
                  _loc3_ = null;
                  _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
               }
               _loc2_.harvestProgressVo = null;
            }
            else if(_loc2_.moveInMode)
            {
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
            }
         }
         return _loc2_;
      }
      
      private function fillUpShopVo(param1:ShopFieldObjectVo) : FieldInfoLayerShopVo
      {
         var _loc3_:TimerBarComponentVo = null;
         var _loc6_:ShopStockGoodVo = null;
         var _loc7_:ResidentialNeedVo = null;
         var _loc2_:FieldInfoLayerShopVo = new FieldInfoLayerShopVo();
         if(!param1.isConnectedToStreet)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
            _loc2_.preHeaderText = "";
            _loc2_.headerText = getBuildingName(param1);
            _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
            return _loc2_;
         }
         _loc3_ = this.getPhaseInfo(param1,ServerPhaseTypes.CREATE_CONSTRUCTION);
         _loc2_.icon_dynaLibName = LIB_PATH;
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
         _loc2_.preHeaderText = "";
         _loc2_.headerText = getBuildingName(param1);
         if(_loc3_.cycleLength <= 0)
         {
            _loc3_ = null;
            _loc2_.constructionMode = this.checkConstructionPhase(param1);
            _loc2_.moveInMode = this.checkMoveInPhase(param1);
            if(_loc2_.constructionMode)
            {
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
            }
            if(_loc2_.moveInMode)
            {
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
            }
            if(_loc2_.constructionMode || _loc2_.moveInMode)
            {
               return _loc2_;
            }
            var _loc4_:ShopDetailViewVo = this._mainLayerProxy.getShopDetailViewVo(param1,false) as ShopDetailViewVo;
            var _loc5_:Boolean = true;
            for each(_loc6_ in _loc4_.storeStock)
            {
               _loc7_ = mockData(_loc6_.goodVo.gfxId);
               if(_loc6_.stockCurrent <= 0)
               {
                  _loc7_.available = false;
                  _loc5_ = false;
               }
               _loc7_.stockAmount = _loc6_.stockCurrent;
               _loc7_.maxAmount = _loc6_.stockMax;
               _loc7_.requiredAmount = _loc6_.consumeAmount;
               _loc2_.residentialNeedVoList.addItem(_loc7_);
            }
            if(_loc5_)
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
            }
            else
            {
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.commercials_fillup");
            }
            _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
            return _loc2_;
         }
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         _loc2_.harvestProgressVo = _loc3_;
         _loc2_.preHeaderText = "";
         return _loc2_;
      }
      
      private function fillUpProductionVo(param1:ProductionFieldObjectVo) : FieldInfoLayerProductionVo
      {
         var _loc5_:uint = 0;
         var _loc7_:Number = NaN;
         var _loc8_:TimerBarComponentVo = null;
         var _loc2_:FieldInfoLayerProductionVo = new FieldInfoLayerProductionVo();
         var _loc3_:ProductionDetailViewVo = this._mainLayerProxy.getProductionDetailViewVo(param1);
         var _loc4_:Boolean = param1.isConnectedToStreet;
         if(!_loc4_)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
            _loc2_.preHeaderText = "";
            _loc2_.headerText = getBuildingName(param1);
            _loc2_.hideSumComponent = true;
            _loc2_.enableProgressSumBar = false;
            _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
            return _loc2_;
         }
         _loc2_.constructionMode = this.checkConstructionPhase(param1);
         _loc2_.moveInMode = this.checkMoveInPhase(param1);
         if(param1.isHarvestReady)
         {
            _loc5_ = _loc2_.layerMode = INFOLAYER_HARVEST_READY;
         }
         else if(param1.upgradeReady && !param1.isInBuildMode)
         {
            _loc5_ = _loc2_.layerMode = INFOLAYER_UPDATE_READY;
         }
         else
         {
            _loc5_ = _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
         }
         var _loc6_:Number = getPhaseOutputGoods(param1,ServerPhaseTypes.PRODUCTION);
         if(this._globalBalanceProxy.energyOutputModifier >= 1)
         {
            _loc7_ = Math.ceil(_loc6_ * this._globalBalanceProxy.energyOutputModifier - _loc6_);
         }
         else
         {
            _loc7_ = Math.floor(_loc6_ * this._globalBalanceProxy.energyOutputModifier - _loc6_);
         }
         if(_loc5_ == INFOLAYER_HARVEST_READY)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
            _loc2_.preHeaderText = "";
            if(param1.upgradeReady && !param1.isInBuildMode)
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_UPGRADE;
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.production_upgrade_state");
            }
            else
            {
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.production_collect");
            }
            if(_loc3_.currentProductionIndex != -1)
            {
               _loc2_.imageTextValueVoArrayList = getProductionIconValueList(_loc3_);
            }
            _loc2_.headerText = getBuildingName(param1);
         }
         else if(_loc5_ == INFOLAYER_UPDATE_READY)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_UPGRADE;
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.production_upgrade_state");
            _loc2_.headerText = getBuildingName(param1);
            if(_loc3_.currentProductionIndex != -1)
            {
               _loc2_.imageTextValueVoArrayList = getProductionIconValueList(_loc3_);
            }
            _loc8_ = this.getPhaseInfo(param1,ServerPhaseTypes.PRODUCTION);
            _loc2_.harvestProgressVo = _loc8_;
         }
         else if(_loc5_ == INFOLAYER_HARVEST_WAIT)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
            _loc2_.preHeaderText = "";
            _loc2_.headerText = getBuildingName(param1);
            _loc8_ = this.getPhaseInfo(param1,ServerPhaseTypes.PRODUCTION);
            if(_loc3_.currentProductionIndex != -1 && !param1.isIdle)
            {
               _loc2_.imageTextValueVoArrayList = getProductionIconValueList(_loc3_);
            }
            if(_loc6_ <= 0)
            {
               _loc2_.hideSumComponent = true;
            }
            if(_loc8_.cycleLength > 0)
            {
               _loc2_.enableProgressSumBar = true;
               _loc2_.harvestProgressVo = _loc8_;
            }
            else
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
               _loc2_.enableProgressSumBar = false;
               _loc2_.constructionMode = this.checkConstructionPhase(param1);
               _loc2_.moveInMode = this.checkMoveInPhase(param1);
               if(_loc2_.constructionMode)
               {
                  _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
               }
               if(_loc2_.moveInMode)
               {
                  _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
               }
               if(!_loc2_.moveInMode && !_loc2_.constructionMode && param1.isIdle)
               {
                  _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.production_trigger");
               }
            }
         }
         _loc2_.sumVo = this.buildImageTextValueVO(ICON_PRODUCT,_loc6_ + _loc7_,true);
         _loc2_.sumVo.nameText = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.total");
         var _loc9_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         if((Boolean(_loc9_)) && _loc9_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BONUSDAY;
         }
         return _loc2_;
      }
      
      private function fillUpResidentialVo(param1:ResidentialFieldObjectVo) : FieldInfoLayerResidentialVo
      {
         var _loc4_:uint = 0;
         var _loc6_:ConfigMasteryChallengeDTO = null;
         var _loc2_:FieldInfoLayerResidentialVo = new FieldInfoLayerResidentialVo();
         if(!param1.isConnectedToStreet)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
            _loc2_.preHeaderText = "";
            _loc2_.headerText = getBuildingName(param1);
            _loc2_.hideSumComponent = true;
            _loc2_.enableProgressSumBar = false;
            _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
            return _loc2_;
         }
         var _loc3_:ResidentialDetailViewVo = this._mainLayerProxy.getResidentialDetailViewVo(param1);
         if(this._featureProxy.improvementFeatureUnlocked)
         {
            _loc2_.improvementIcons.enabled = true;
            _loc2_.improvementIcons.listOfImprovements = param1.currentImprovements;
            _loc2_.improvementIcons.numFreeSlots = param1.numFreeImprovementSlots;
            _loc2_.improvementIcons.currentTimeStamp = this._timerProxy.currentTimeStamp;
         }
         else
         {
            _loc2_.improvementIcons.enabled = false;
         }
         if(param1.isHarvestReady)
         {
            _loc4_ = _loc2_.layerMode = INFOLAYER_HARVEST_READY;
         }
         else if(param1.upgradeReady && !param1.isInBuildMode)
         {
            _loc4_ = _loc2_.layerMode = INFOLAYER_UPDATE_READY;
         }
         else
         {
            _loc4_ = _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
         }
         _loc2_.enableProgressSumBar = true;
         if(_loc4_ == INFOLAYER_HARVEST_READY)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
            _loc2_.headerText = getBuildingName(param1);
            _loc2_.imageTextValueVoArrayList = getResidentialIconValueList(_loc3_);
            _loc2_.preHeaderText = "";
            if(param1.upgradeReady && !param1.isInBuildMode)
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_UPGRADE;
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.residential_upgrade_state");
            }
            else
            {
               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.residential_collect_state");
            }
         }
         else if(_loc4_ == INFOLAYER_UPDATE_READY)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_UPGRADE;
            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.residential_upgrade_state");
            _loc2_.headerText = getBuildingName(param1);
            _loc2_.harvestProgressVo = this.getPhaseInfo(param1,ServerPhaseTypes.RESIDENTIAL);
            _loc2_.imageTextValueVoArrayList = getResidentialIconValueList(_loc3_);
         }
         else if(_loc4_ == INFOLAYER_HARVEST_WAIT)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
            _loc2_.preHeaderText = "";
            _loc2_.headerText = getBuildingName(param1);
            _loc2_.harvestProgressVo = this.getPhaseInfo(param1,ServerPhaseTypes.RESIDENTIAL);
            _loc2_.imageTextValueVoArrayList = getResidentialIconValueList(_loc3_);
            if(getPhaseOutputCurrency(param1,ServerPhaseTypes.RESIDENTIAL) <= 0)
            {
               _loc2_.hideSumComponent = true;
            }
            if(_loc2_.harvestProgressVo.cycleLength > 0)
            {
               _loc2_.enableProgressSumBar = true;
            }
            else
            {
               _loc2_.enableProgressSumBar = false;
               _loc2_.constructionMode = this.checkConstructionPhase(param1);
               _loc2_.moveInMode = this.checkMoveInPhase(param1);
               if(_loc2_.constructionMode)
               {
                  _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
               }
               if(_loc2_.moveInMode)
               {
                  _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.residential_movein");
               }
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
            }
         }
         _loc2_.sumVo = this.getResidentialSumVO();
         _loc2_.sumVo.nameText = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.outcome");
         if(param1.currentResidents)
         {
            switch(param1.currentResidents)
            {
               case ServerResConst.RESOURCE_WORKERS:
                  _loc2_.residentIconLib = "gui_infield_gui_infolayer";
                  _loc2_.residentIconName = "people_icon_workers";
                  break;
               case ServerResConst.RESOURCE_RICHMEN:
                  _loc2_.residentIconLib = "gui_infield_gui_infolayer";
                  _loc2_.residentIconName = "people_icon_riches";
                  break;
               case ServerResConst.RESOURCE_ACADEMICS:
                  _loc2_.residentIconLib = "gui_infield_gui_infolayer";
                  _loc2_.residentIconName = "people_icon_academics";
            }
         }
         if(this._featureProxy.isFeatureEnabled(ServerFeatureConstants.BUILDING_MASTERY))
         {
            if(param1.buildingDTO.currentMasteryChallenge)
            {
               _loc6_ = param1.buildingDTO.currentMasteryChallenge.config;
               if(_loc6_)
               {
                  _loc2_.masteryLevel = param1.buildingDTO.indexOfCurrentMasteryChallenge;
                  _loc2_.masteryProgress = param1.buildingDTO.currentMasteryChallenge.currentProgress / _loc6_.targetProgress;
               }
            }
         }
         var _loc5_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         if((Boolean(_loc5_)) && _loc5_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            _loc2_.icon_dynaBmpSourceName = ICON_BONUSDAY;
         }
         return _loc2_;
      }
      
      private function getDepartmentProfessionals(param1:InfrastructureBuildingFieldObjectVo) : Vector.<DepartmentProfessionalComponentVo>
      {
         var _loc4_:Object = null;
         var _loc5_:ConfigProfessionalSpecializationDTO = null;
         var _loc6_:ProfessionalDTO = null;
         var _loc2_:Vector.<DepartmentProfessionalComponentVo> = new Vector.<DepartmentProfessionalComponentVo>();
         var _loc3_:Vector.<ConfigProfessionalSpecializationDTO> = this._professionalProxy.getProfessionalSlotsForDepartment(param1.department[0]);
         for each(_loc5_ in _loc3_)
         {
            _loc4_ = new Object();
            _loc4_.lib = "icon_badges";
            _loc4_.swf = "gui_ui_emergencyDepartmentsIcons";
            _loc4_.bmp = _loc5_.gfxId;
            for each(_loc6_ in this._professionalProxy.getProfessionalsByDepartment(param1.department[0]))
            {
               if(_loc6_.configSpecializationId == _loc5_.id)
               {
                  _loc4_.occ = true;
                  break;
               }
            }
            _loc2_.push(new DepartmentProfessionalComponentVo(_loc4_));
         }
         return _loc2_;
      }
      
      private function buildImageTextValueVO(param1:String, param2:Number, param3:Boolean = false) : ImageTextValueVO
      {
         var _loc4_:ImageTextValueVO = new ImageTextValueVO();
         var _loc5_:uint = param3 ? 13 : 11;
         var _loc6_:uint = param3 ? this._colorOutComeText : this._colorText;
         _loc4_.visualLibName = LIB_ICON_PATH;
         _loc4_.visualName = param1;
         _loc4_.nameText = this._locaTextDict[param1];
         _loc4_.nameFontSize = 11;
         _loc4_.nameColor = _loc6_;
         _loc4_.valueColor = param2 >= 0 ? this._colorGreen : this._colorRed;
         _loc4_.valueFontSize = _loc5_;
         if(param1 == ICON_COIN && !param3 || param1 == ICON_PRODUCT && !param3)
         {
            _loc4_.valueColor = this._colorText;
            _loc4_.valueTextLabel = LocaUtils.getThousendSeperatedNumber(Math.abs(param2));
         }
         else if(param1 == ICON_COIN && param3 || param1 == ICON_PRODUCT && param3)
         {
            _loc4_.valueTextLabel = LocaUtils.getThousendSeperatedNumber(Math.abs(param2));
         }
         else
         {
            _loc4_.valueTextLabel = param2 >= 0 ? "+ " + param2 : "- " + LocaUtils.getThousendSeperatedNumber(Math.abs(param2));
         }
         return _loc4_;
      }
      
      private function getResidentialSumVO() : ImageTextValueVO
      {
         var _loc1_:Number = NaN;
         return this.buildImageTextValueVO(ICON_COIN,_loc1_,true);
      }
      
      private function checkConstructionPhase(param1:BillboardObjectVo) : Boolean
      {
         var _loc2_:PhaseDTO = null;
         if(param1 is CitySquareFieldObjectVo || param1 is CinemaFieldObjectVo)
         {
            return false;
         }
         for each(_loc2_ in param1.activePhases)
         {
            if(_loc2_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc2_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION || _loc2_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
            {
               return true;
            }
            if(_loc2_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION && !param1.isHarvestReady)
            {
               return true;
            }
         }
         return false;
      }
      
      private function checkMoveInPhase(param1:BillboardObjectVo) : Boolean
      {
         var _loc2_:PhaseDTO = null;
         for each(_loc2_ in param1.activePhases)
         {
            if(_loc2_.config.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
            {
               if(_loc2_.config.durationConfig.duration <= 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function getPhaseInfo(param1:BillboardObjectVo, param2:String) : TimerBarComponentVo
      {
         var _loc4_:PhaseDTO = null;
         var _loc3_:TimerBarComponentVo = new TimerBarComponentVo();
         for each(_loc4_ in param1.activePhases)
         {
            if(_loc4_.config.phaseType == param2 || _loc4_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc4_.config.phaseType == ServerPhaseTypes.UPGRADE || _loc4_.config.phaseType == ServerPhaseTypes.EDUCATION || _loc4_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
            {
               if(_loc4_.expirationTime <= this._timerProxy.currentTimeStamp)
               {
                  _loc3_.waitingForStart = true;
               }
               else if(_loc4_.expirationTime > this._timerProxy.currentTimeStamp)
               {
                  _loc3_.waitingForStart = false;
                  _loc3_.startTime = _loc4_.expirationTime - _loc4_.config.durationConfig.duration;
                  _loc3_.targetTime = _loc4_.expirationTime;
                  _loc3_.cycleLength = _loc4_.config.durationConfig.duration;
                  _loc3_.currentTime = this._timerProxy.currentTimeStamp;
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      public function getVoForConstruction(param1:BillboardObject) : FieldInfoLayerConstructionVo
      {
         if(this.checkConstructionPhase(param1.billboardObjectVo))
         {
            return new FieldInfoLayerConstructionVo();
         }
         return null;
      }
      
      public function isoToStage(param1:Number, param2:Number) : Point
      {
         var _loc4_:Point = null;
         var _loc3_:Pt = IsoMath.isoToScreen(new Pt(param1 + 1,param2 + 1,this.isoView.currentZoom));
         _loc4_ = this.isoView.localToGlobal(new Point(_loc3_.x,_loc3_.y));
         _loc4_.x = Math.round(_loc3_.x);
         _loc4_.y = Math.round(_loc3_.y);
         return _loc4_;
      }
      
      public function get isoView() : IsoView
      {
         return this._isoView;
      }
      
      public function set isoView(param1:IsoView) : void
      {
         this._isoView = param1;
      }
      
      private function get heatmapMediator() : SecurityGradeHeatMapMediator
      {
         if(!this._hmMed)
         {
            this._hmMed = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
         }
         return this._hmMed;
      }
   }
}

