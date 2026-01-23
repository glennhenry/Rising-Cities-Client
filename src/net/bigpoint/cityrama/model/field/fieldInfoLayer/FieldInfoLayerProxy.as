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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "FieldInfoLayerProxy";
         if(_loc2_ || FieldInfoLayerProxy)
         {
            INFOLAYER_HARVEST_READY = 1;
            if(!_loc1_)
            {
               INFOLAYER_HARVEST_WAIT = 2;
               if(_loc2_)
               {
                  INFOLAYER_UPDATE_READY = 3;
                  if(_loc2_ || _loc1_)
                  {
                     NOTIFICATION_DELAY_FAST = 0.3;
                     if(!_loc1_)
                     {
                        NOTIFICATION_DELAY_SLOW = 0.6;
                        if(!_loc1_)
                        {
                           LIB_PATH = "gui_infield_gui_infolayer";
                           if(_loc2_)
                           {
                              addr0081:
                              LIB_ICON_PATH = "gui_resources_icons";
                              if(!(_loc1_ && FieldInfoLayerProxy))
                              {
                                 addr00a1:
                                 ICON_NEEDS = "layer_needs_icon";
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr00b7:
                                    ICON_HAPPY = "layer_happyness_icon";
                                    if(_loc2_ || _loc1_)
                                    {
                                       ICON_SAD = "layer_sad_icon";
                                       if(_loc2_)
                                       {
                                          ICON_ENERGY = "layer_energy_icon";
                                          if(!_loc1_)
                                          {
                                             §§goto(addr00e9);
                                          }
                                          §§goto(addr0156);
                                       }
                                       §§goto(addr00e9);
                                    }
                                    §§goto(addr0105);
                                 }
                                 §§goto(addr0113);
                              }
                           }
                           addr00e9:
                           ICON_COIN = "layer_cc_icon";
                           if(_loc2_)
                           {
                              ICON_PRODUCT = "product_icon";
                              if(!_loc1_)
                              {
                                 addr0105:
                                 ICON_BIG_ALERT = "infolayer_icon_attention";
                                 if(!_loc1_)
                                 {
                                    addr0113:
                                    ICON_BIG_INFO = "infolayer_icon_info";
                                    if(!_loc1_)
                                    {
                                       ICON_BIG_UPGRADE = "infolayer_icon_upgrade";
                                       if(!_loc1_)
                                       {
                                          §§goto(addr0139);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr0156);
                           }
                           addr0139:
                           ICON_BIG_EMERGENCY = "infolayer_icon_emergency";
                           if(!_loc1_)
                           {
                              ICON_BIG_X = "infolayer_icon_demolish";
                              if(!_loc1_)
                              {
                                 addr0156:
                                 ICON_BONUSDAY = "infolayer_icon_bonusDay";
                                 if(_loc2_)
                                 {
                                    addr0164:
                                    ICON_LOCKED = "levellocked";
                                 }
                                 §§goto(addr016d);
                              }
                              §§goto(addr0164);
                           }
                           addr016d:
                           return;
                        }
                        §§goto(addr0156);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr0156);
            }
         }
         §§goto(addr0113);
      }
      §§goto(addr0081);
      
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
            if(_loc4_ || Boolean(param1))
            {
               ToolTipManager.scrubDelay = 0.1;
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0058:
                  ToolTipManager.showDelay = 0.1;
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      private static function fillUpInfrastructureDecorationVo(param1:InfrastructureDecorationFieldObjectVo) : FieldInfoLayerInfrastructureDecorationVo
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:String = null;
         var _loc2_:FieldInfoLayerInfrastructureDecorationVo = new FieldInfoLayerInfrastructureDecorationVo();
         if(!_loc8_)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(!(_loc8_ && Boolean(param1)))
            {
               addr003f:
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
               if(!_loc8_)
               {
                  _loc2_.headerText = getBuildingName(param1);
               }
            }
            var _loc3_:ArrayCollection = new ArrayCollection();
            for each(_loc4_ in param1.department)
            {
               if(!(_loc8_ && Boolean(param1)))
               {
                  _loc3_.addItem(_loc4_);
               }
            }
            if(!_loc8_)
            {
               _loc2_.departmentList = _loc3_;
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  §§goto(addr00cc);
               }
               §§goto(addr00ed);
            }
            addr00cc:
            _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
            if(_loc7_)
            {
               addr00ed:
               _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.device.info");
            }
            return _loc2_;
         }
         §§goto(addr003f);
      }
      
      private static function getSecurityVector(param1:EmergencyZoneLayerVo) : Vector.<SecurityStatusComponentVo>
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Vector.<SecurityStatusComponentVo> = new Vector.<SecurityStatusComponentVo>();
         var _loc3_:Object = {};
         if(_loc4_)
         {
            _loc3_.checks = true;
            if(_loc4_)
            {
               §§push(param1.fireGrade);
               if(!_loc5_)
               {
                  §§push(-1);
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     if(§§pop() != §§pop())
                     {
                        if(!_loc5_)
                        {
                           _loc3_.dept = ServerTagConstants.FIRE_DEPARTMENT;
                           if(_loc4_)
                           {
                              _loc3_.req = param1.fireRequiredGrade;
                              if(_loc4_)
                              {
                                 _loc3_.grade = param1.fireGrade;
                                 if(_loc4_)
                                 {
                                    addr008c:
                                    _loc2_.push(new SecurityStatusComponentVo(_loc3_));
                                    if(!_loc5_)
                                    {
                                       §§goto(addr009e);
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr0128);
                              }
                              §§goto(addr0107);
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr008c);
                     }
                     addr009e:
                     §§push(param1.policeGrade);
                     if(!(_loc5_ && FieldInfoLayerProxy))
                     {
                        addr00b1:
                        §§push(-1);
                        if(_loc4_ || FieldInfoLayerProxy)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 addr00e0:
                                 _loc3_.dept = ServerTagConstants.POLICE_DEPARTMENT;
                                 if(_loc4_)
                                 {
                                    addr00ef:
                                    _loc3_.req = param1.policeRequiredGrade;
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr0107:
                                       _loc3_.grade = param1.policeGrade;
                                       if(_loc4_)
                                       {
                                          addr0116:
                                          _loc2_.push(new SecurityStatusComponentVo(_loc3_));
                                          if(!_loc5_)
                                          {
                                             §§goto(addr0128);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr0182);
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr015b);
                              }
                           }
                           addr0128:
                           §§goto(addr012f);
                        }
                        addr012f:
                        §§goto(addr012d);
                     }
                     addr012d:
                     if(param1.hospitalGrade != -1)
                     {
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           addr0141:
                           _loc3_.dept = ServerTagConstants.HOSPITAL;
                           if(_loc4_)
                           {
                              addr015b:
                              _loc3_.req = param1.hospitalRequiredGrade;
                              if(_loc4_)
                              {
                                 _loc3_.grade = param1.hospitalGrade;
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    addr0182:
                                    _loc2_.push(new SecurityStatusComponentVo(_loc3_));
                                 }
                              }
                           }
                           §§goto(addr018e);
                        }
                        §§goto(addr015b);
                     }
                     addr018e:
                     return _loc2_;
                  }
                  §§goto(addr012f);
               }
               §§goto(addr00b1);
            }
            §§goto(addr00ef);
         }
         §§goto(addr00e0);
      }
      
      private static function fillUpDecoVo(param1:DecorationFieldObjectVo) : FieldInfoLayerDecorationVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FieldInfoLayerDecorationVo = new FieldInfoLayerDecorationVo();
         if(_loc3_)
         {
            _loc2_.preHeaderText = "";
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.headerText = getBuildingName(param1);
               if(_loc3_ || Boolean(param1))
               {
                  addr005d:
                  _loc2_.icon_dynaLibName = LIB_PATH;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                     if(!_loc4_)
                     {
                        _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr005d);
      }
      
      private static function getBuildingName(param1:BillboardObjectVo) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = "rcl.playfielditems.name";
         if(_loc3_ || _loc3_)
         {
            §§push(LocaUtils);
            §§push(_loc2_);
            §§push(_loc2_ + ".");
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(§§pop() + param1.configPlayfieldItemVo.localeId);
            }
            §§push(§§pop().getString(§§pop(),§§pop()));
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        addr0079:
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           if(!_temp_5)
                           {
                              if(_loc3_ || Boolean(param1))
                              {
                                 addr0092:
                                 §§pop();
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr00ec);
                                 }
                                 §§goto(addr00eb);
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0092);
                     }
                     addr00ec:
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        addr00aa:
                        addr00a7:
                        if(§§pop() == "")
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr00c6:
                              §§push("locaID ");
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + param1.configPlayfieldItemVo.localeId);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop() + " unknown");
                                 }
                              }
                              _loc2_ = §§pop();
                           }
                        }
                        addr00eb:
                        return _loc2_;
                     }
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr0079);
            }
            §§goto(addr00a7);
         }
         §§goto(addr00eb);
      }
      
      private static function getBuildingNameByConfig(param1:ConfigPlayfieldItemDTO) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = "rcl.playfielditems.name";
         if(_loc3_ || _loc3_)
         {
            §§push(LocaUtils);
            §§push(_loc2_);
            §§push(_loc2_ + ".");
            if(_loc3_)
            {
               §§push(§§pop() + param1.localeId);
            }
            §§push(§§pop().getString(§§pop(),§§pop()));
            if(!_loc4_)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  if(_loc3_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        addr005e:
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           var _temp_2:* = §§pop();
                           §§push(_temp_2);
                           if(!_temp_2)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr0077:
                                 §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr0086);
                                 }
                                 §§goto(addr00d2);
                              }
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr0077);
                     }
                     §§goto(addr008d);
                  }
                  addr0086:
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     addr0090:
                     addr008d:
                     if(§§pop() == "")
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr00b0:
                           §§push("locaID ");
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() + param1.localeId);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + " unknown");
                              }
                           }
                           _loc2_ = §§pop();
                        }
                     }
                     addr00d2:
                     return _loc2_;
                  }
               }
               §§goto(addr005e);
            }
            §§goto(addr008d);
         }
         §§goto(addr00b0);
      }
      
      public static function getPhaseOutputCurrency(param1:BillboardObjectVo, param2:String) : Number
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:PhaseDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc3_:* = 0;
         for each(_loc4_ in param1.activePhases)
         {
            if(_loc4_.config.phaseType == param2)
            {
               if(_loc10_)
               {
                  var _loc8_:int = 0;
                  if(_loc10_)
                  {
                     for each(_loc5_ in _loc4_.config.listEntryOutputs)
                     {
                        if(_loc5_.resourceConfig)
                        {
                           if(!(_loc11_ && Boolean(_loc3_)))
                           {
                              §§push(_loc5_.outputAmount);
                              if(!_loc11_)
                              {
                                 §§push(§§pop());
                              }
                              _loc3_ = §§pop();
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc3_;
      }
      
      private static function getResidentialIconValueList(param1:ResidentialDetailViewVo) : ArrayList
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ArrayList = new ArrayList();
         if(!_loc4_)
         {
            _loc2_.addItem(param1.rentalIncomeVo);
            if(!_loc4_)
            {
               _loc2_.addItem(param1.needIncomeVo);
            }
         }
         return _loc2_;
      }
      
      private static function getProductionIconValueList(param1:ProductionDetailViewVo) : ArrayList
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ArrayList = new ArrayList();
         if(_loc4_)
         {
            if(param1.productionOptions[param1.currentProductionIndex].productionIncome.maxAmount > 0)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0056:
                  _loc2_.addItem(param1.productionOptions[param1.currentProductionIndex].productionIncome);
               }
            }
            return _loc2_;
         }
         §§goto(addr0056);
      }
      
      private static function getEnergyValue(param1:BillboardObjectVo) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.configPlayfieldItemVo.globalBuffs;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  continue;
               }
               §§push(_loc2_.resourceConfig);
               if(!_loc5_)
               {
                  §§push(§§pop().type);
                  if(!_loc5_)
                  {
                     §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                     if(_loc6_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_)
                           {
                              §§push(_loc2_.outputAmount);
                              if(!_loc5_)
                              {
                                 return §§pop();
                              }
                              addr00a9:
                              addr00ac:
                              return §§pop() * -1;
                           }
                           break;
                        }
                        addr0090:
                        addr008e:
                        §§push(_loc2_.resourceConfig.type);
                        §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr0090);
               }
               §§goto(addr008e);
            }
            return 0;
         }
         §§push(_loc2_.outputAmount);
         if(!_loc5_)
         {
            §§goto(addr00a9);
         }
         §§goto(addr00ac);
      }
      
      private static function getMoodValue(param1:BillboardObjectVo) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.configPlayfieldItemVo.globalBuffs;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  §§push(_loc2_.resourceConfig);
                  if(_loc6_)
                  {
                     §§push(§§pop().type);
                     if(_loc6_ || FieldInfoLayerProxy)
                     {
                        §§push(ServerResConst.RESOURCE_HAPPINESS_POSITIVE);
                        if(_loc6_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(_loc2_.outputAmount);
                                 if(_loc6_)
                                 {
                                    return §§pop();
                                 }
                                 addr00c1:
                                 addr00c4:
                                 return §§pop() * -1;
                              }
                           }
                           addr008c:
                           addr008a:
                           addr0086:
                           §§push(_loc2_.resourceConfig.type);
                           §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_ || FieldInfoLayerProxy)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0086);
            }
            return 0;
         }
         §§push(_loc2_.outputAmount);
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            §§goto(addr00c1);
         }
         §§goto(addr00c4);
      }
      
      public static function getPhaseOutputGoods(param1:BillboardObjectVo, param2:String) : Number
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc4_:PhaseDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc3_:* = 0;
         for each(_loc4_ in param1.activePhases)
         {
            if(_loc4_.config.phaseType == param2)
            {
               if(!_loc10_)
               {
                  var _loc8_:int = 0;
                  if(_loc11_)
                  {
                     for each(_loc5_ in _loc4_.config.listEntryOutputs)
                     {
                        if(_loc5_.goodConfig)
                        {
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              if(_loc5_.type != ServerOutputConstants.GOOD)
                              {
                                 continue;
                              }
                              if(!(_loc11_ || Boolean(param1)))
                              {
                                 continue;
                              }
                           }
                           §§push(_loc5_.outputAmount);
                           if(_loc11_ || FieldInfoLayerProxy)
                           {
                              §§push(§§pop());
                           }
                           _loc3_ = §§pop();
                        }
                     }
                  }
               }
            }
         }
         return _loc3_;
      }
      
      private static function mockData(param1:int) : ResidentialNeedVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§findproperty(ResidentialNeedVo));
         §§push("gui_popups_smallGoodIcons");
         §§push("small_");
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() + param1);
         }
         return new §§pop().ResidentialNeedVo(§§pop(),§§pop(),true,true,1);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:CSSStyleDeclaration = FlexGlobals.topLevelApplication.styleManager.getStyleDeclaration(".newValueColorFormats");
         if(!_loc3_)
         {
            this._colorGreen = _loc1_.getStyle("grasgreen");
            if(!_loc3_)
            {
               this._colorRed = _loc1_.getStyle("deepred");
               if(!(_loc3_ && _loc2_))
               {
                  this._colorText = _loc1_.getStyle("silvergray");
                  if(!_loc3_)
                  {
                     addr006d:
                     this._colorOutComeText = _loc1_.getStyle("slateblue");
                     if(!_loc3_)
                     {
                        this._locaTextDict = new Dictionary();
                        if(!(_loc3_ && _loc2_))
                        {
                           this._locaTextDict[ICON_HAPPY] = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.happyness");
                           if(!_loc3_)
                           {
                              this._locaTextDict[ICON_SAD] = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.happyness");
                              if(_loc2_)
                              {
                                 this._locaTextDict[ICON_COIN] = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.yield");
                                 if(!_loc3_)
                                 {
                                    addr00e7:
                                    this._locaTextDict[ICON_ENERGY] = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.energy");
                                    if(_loc2_)
                                    {
                                       this._locaTextDict[ICON_PRODUCT] = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.units");
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          this._locaTextDict[ICON_NEEDS] = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.needs.small");
                                          if(_loc2_ || Boolean(this))
                                          {
                                             this._securityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr0175:
                                                this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                                                if(_loc2_)
                                                {
                                                   this._globalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
                                                   if(_loc2_)
                                                   {
                                                      addr01a3:
                                                      this._mainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
                                                      if(!_loc3_)
                                                      {
                                                         addr01ba:
                                                         this._emergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
                                                         if(!(_loc3_ && Boolean(_loc1_)))
                                                         {
                                                            this._expansionProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
                                                            if(_loc2_)
                                                            {
                                                               addr01f0:
                                                               this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr0207);
                                                               }
                                                               §§goto(addr0287);
                                                            }
                                                            §§goto(addr0207);
                                                         }
                                                         §§goto(addr0287);
                                                      }
                                                      §§goto(addr023c);
                                                   }
                                                   addr0207:
                                                   this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr0226:
                                                      this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                                                      if(!_loc3_)
                                                      {
                                                         addr023c:
                                                         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            addr0268:
                                                            this._expansionSaleProxy = facade.retrieveProxy(ExpansionSaleEventProxy.NAME) as ExpansionSaleEventProxy;
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr0287:
                                                               this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                                                            }
                                                            §§goto(addr0299);
                                                         }
                                                         §§goto(addr0287);
                                                      }
                                                   }
                                                   addr0299:
                                                   return;
                                                }
                                                §§goto(addr01f0);
                                             }
                                             §§goto(addr01ba);
                                          }
                                          §§goto(addr0226);
                                       }
                                       §§goto(addr01a3);
                                    }
                                    §§goto(addr0268);
                                 }
                                 §§goto(addr0175);
                              }
                              §§goto(addr0268);
                           }
                           §§goto(addr0226);
                        }
                        §§goto(addr01ba);
                     }
                     §§goto(addr01f0);
                  }
                  §§goto(addr0175);
               }
               §§goto(addr00e7);
            }
            §§goto(addr006d);
         }
         §§goto(addr01f0);
      }
      
      public function set interactiveObject(param1:IInteraction) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            TweenMax.killDelayedCallsTo(this.timeOutHandler);
         }
         §§push(NOTIFICATION_DELAY_FAST);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(!OptionsGlobalVariables.getInstance().fasterNotification)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(NOTIFICATION_DELAY_SLOW);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
                  if(!_loc3_)
                  {
                     addr0070:
                     if(param1)
                     {
                        if(!_loc3_)
                        {
                           addr0087:
                           this._interactiveObject = param1;
                           if(_loc4_)
                           {
                              TweenMax.delayedCall(_loc2_,this.timeOutHandler);
                              if(_loc4_ || _loc2_)
                              {
                              }
                           }
                        }
                     }
                     else
                     {
                        sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
                     }
                  }
                  return;
               }
               §§goto(addr0087);
            }
            §§goto(addr0070);
         }
         §§goto(addr0087);
      }
      
      private function timeOutHandler() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BillboardObject = null;
         if(_loc2_ || Boolean(_loc1_))
         {
            §§push(this._interactiveObject);
            if(_loc2_)
            {
               if(§§pop() is BillboardObject)
               {
                  addr0038:
                  _loc1_ = this._interactiveObject as BillboardObject;
                  addr0034:
                  if(!_loc3_)
                  {
                     §§push(this.heatmapMediator.currentViewedType);
                     if(!_loc3_)
                     {
                        if(§§pop() == "")
                        {
                           if(_loc2_)
                           {
                              §§push(_loc1_.billboardObjectVo);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§push(§§pop().hasEmergency());
                                 if(_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          addr007d:
                                          §§push(_loc1_ is ResidentialFieldObject);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc2_ || Boolean(_loc1_))
                                                {
                                                   sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_RESIDENTIAL,this._interactiveObject);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr01c0);
                                                }
                                                else
                                                {
                                                   addr0558:
                                                   §§push(_loc1_ is PowerplantFieldObject);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr056a:
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            addr057b:
                                                            sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SECURITY_GRADE,this._interactiveObject);
                                                            if(_loc3_)
                                                            {
                                                               addr05a9:
                                                               addr05ae:
                                                               if(_loc1_ is ExpansionFieldObject)
                                                               {
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     addr05bf:
                                                                     sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EXPANSION,this._interactiveObject);
                                                                  }
                                                                  §§goto(addr05cd);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr05ce);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr058e);
                                                      }
                                                      §§goto(addr05a9);
                                                   }
                                                   §§goto(addr05ae);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc1_ is ProductionFieldObject);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PRODUCTION,this._interactiveObject);
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr0439);
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§push(_loc1_ is InfrastructureDecorationFieldObject);
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || Boolean(_loc1_))
                                                         {
                                                            sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_DECORATION,this._interactiveObject);
                                                            if(_loc2_)
                                                            {
                                                               return;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr017b);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc1_ is DecorationFieldObject);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_DECORATION,this._interactiveObject);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr017b:
                                                                     return;
                                                                  }
                                                                  addr025a:
                                                                  sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_BOULDER,this._interactiveObject);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     return;
                                                                  }
                                                                  §§goto(addr02a7);
                                                               }
                                                               else
                                                               {
                                                                  addr01e1:
                                                                  sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EXPANSION,this._interactiveObject);
                                                                  if(!(_loc3_ && Boolean(_loc1_)))
                                                                  {
                                                                     return;
                                                                  }
                                                                  addr04b2:
                                                                  sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EMERGENCY,this._interactiveObject);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr04c6);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0558);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc1_ is PowerplantFieldObject);
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_POWERPLANT,this._interactiveObject);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           addr01c0:
                                                                           return;
                                                                        }
                                                                        §§goto(addr04b2);
                                                                     }
                                                                     §§goto(addr04c6);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc1_ is ExpansionFieldObject);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr01e1);
                                                                           }
                                                                           §§goto(addr04b2);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc1_ is ShopFieldObject);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_NEEDSHOP,this._interactiveObject);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    addr023f:
                                                                                    §§push(_loc1_ is BoulderFieldObject);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             §§goto(addr025a);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr041d:
                                                                                             sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_CINEMA,this._interactiveObject);
                                                                                             if(_loc2_ || Boolean(this))
                                                                                             {
                                                                                                §§goto(addr0439);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr05bf);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc1_ is CitySquareFieldObject);
                                                                                          if(_loc2_ || Boolean(this))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc2_ || Boolean(_loc1_))
                                                                                                {
                                                                                                   addr02a7:
                                                                                                   §§goto(addr02b2);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr033b:
                                                                                                   §§push(_loc1_ is InfrastructureBuildingFieldObject);
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc2_ || _loc3_)
                                                                                                         {
                                                                                                            addr035e:
                                                                                                            sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_BUILDING,this._interactiveObject);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§goto(addr0372);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr0486);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc1_ is AcademyFieldObject);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr04c6:
                                                                                                                  return;
                                                                                                               }
                                                                                                               addr038b:
                                                                                                               sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_ACADEMY,this._interactiveObject);
                                                                                                               if(_loc2_ || Boolean(this))
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc1_ is MysteryBuildingFieldObject);
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  addr03c7:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr03d8:
                                                                                                                        sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_MYSTERYBUILDING,this._interactiveObject);
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        addr052e:
                                                                                                                        §§push(_loc1_ is ProductionFieldObject);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr0538:
                                                                                                                           var _temp_33:* = §§pop();
                                                                                                                           addr0539:
                                                                                                                           §§push(_temp_33);
                                                                                                                           if(!_temp_33)
                                                                                                                           {
                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr054a:
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc2_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    §§goto(addr0558);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05bf);
                                                                                                                              }
                                                                                                                              §§goto(addr05ae);
                                                                                                                           }
                                                                                                                           §§goto(addr056a);
                                                                                                                        }
                                                                                                                        §§goto(addr05ae);
                                                                                                                     }
                                                                                                                     §§goto(addr05a9);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc1_ is CinemaFieldObject);
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§goto(addr040c);
                                                                                                                     }
                                                                                                                     §§goto(addr0511);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr040c:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr041d);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr0447);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0447);
                                                                                                            }
                                                                                                            addr0447:
                                                                                                            §§push(_loc1_ is ScheduledDropFieldObject);
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               §§goto(addr0459);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0501:
                                                                                                               §§pop();
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr0507);
                                                                                                               }
                                                                                                            }
                                                                                                            addr058e:
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr056a);
                                                                                                      }
                                                                                                      §§goto(addr05a9);
                                                                                                   }
                                                                                                   §§goto(addr03c7);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc1_ is TownHallFieldObject);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0309:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_TOWNHALL,this._interactiveObject);
                                                                                                         if(_loc2_ || Boolean(this))
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr05bf);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr038b);
                                                                                                      }
                                                                                                      §§goto(addr05cd);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr033b);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr0459:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc2_ || _loc3_)
                                                                                                {
                                                                                                   sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SCHEDULED_DROP,this._interactiveObject);
                                                                                                   if(_loc2_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      addr0486:
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0507:
                                                                                                   §§push(_loc1_ is ShopFieldObject);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr0511:
                                                                                                      var _temp_41:* = §§pop();
                                                                                                      §§push(_temp_41);
                                                                                                      §§push(_temp_41);
                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr0528:
                                                                                                               §§pop();
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr052e);
                                                                                                               }
                                                                                                               §§goto(addr057b);
                                                                                                            }
                                                                                                            §§goto(addr054a);
                                                                                                         }
                                                                                                         §§goto(addr0538);
                                                                                                      }
                                                                                                      §§goto(addr0539);
                                                                                                   }
                                                                                                   §§goto(addr056a);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr05ce);
                                                                                          }
                                                                                          §§goto(addr040c);
                                                                                       }
                                                                                       addr05cd:
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr05ae);
                                                                                 }
                                                                                 §§goto(addr05ce);
                                                                              }
                                                                              §§goto(addr023f);
                                                                           }
                                                                           §§goto(addr0309);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr04a1:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§goto(addr04b2);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr052e);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr05ce);
                                                               }
                                                               §§goto(addr0309);
                                                            }
                                                            §§goto(addr056a);
                                                         }
                                                         §§goto(addr040c);
                                                      }
                                                      §§goto(addr0372);
                                                   }
                                                   §§goto(addr04a1);
                                                   addr0439:
                                                   return;
                                                }
                                                §§goto(addr03c7);
                                             }
                                             §§goto(addr056a);
                                          }
                                          §§goto(addr05ae);
                                       }
                                       §§goto(addr035e);
                                    }
                                    else
                                    {
                                       addr0499:
                                       §§push((this._interactiveObject as BillboardObject).billboardObjectVo.emergencyInProgress);
                                       if(_loc2_)
                                       {
                                          §§goto(addr04a1);
                                       }
                                       else
                                       {
                                          §§goto(addr0511);
                                       }
                                    }
                                    §§goto(addr0511);
                                 }
                                 §§goto(addr0459);
                              }
                              §§goto(addr0499);
                           }
                           §§goto(addr007d);
                        }
                        else
                        {
                           §§push(_loc1_ is ResidentialFieldObject);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              var _temp_46:* = §§pop();
                              §§push(_temp_46);
                              §§push(_temp_46);
                              if(_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§goto(addr0501);
                                    }
                                    §§goto(addr056a);
                                 }
                                 §§goto(addr0511);
                              }
                              §§goto(addr0539);
                           }
                        }
                        §§goto(addr0528);
                     }
                     addr02b2:
                     if((_loc1_ as CitySquareFieldObject).citySquareFieldObjectVo.currentEventState != CitySquareFieldObjectVo.FINISHED)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EVENT_SQUARE,this._interactiveObject);
                           if(!(_loc2_ || _loc3_))
                           {
                              addr0372:
                              return;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr03d8);
               }
               addr05ce:
               return;
            }
            §§goto(addr0038);
         }
         §§goto(addr0034);
      }
      
      public function getVoForView(param1:BillboardObjectVo, param2:BillboardObject = null) : Object
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(this.heatmapMediator.currentViewedType == "")
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(Boolean(param1));
                  if(_loc4_ || _loc3_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc4_ || Boolean(param2))
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || Boolean(param2))
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(param1.hasEmergency());
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr008c:
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(param1.isUnderConstruction());
                                             if(_loc4_ || Boolean(param2))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc3_ && Boolean(param1)))
                                                {
                                                   addr00bf:
                                                   var _temp_12:* = §§pop();
                                                   §§push(_temp_12);
                                                   §§push(_temp_12);
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr00cf:
                                                            §§pop();
                                                            if(_loc4_)
                                                            {
                                                               §§push(param1.isReadyToInaugurate);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc4_ || Boolean(param2))
                                                                  {
                                                                     §§goto(addr00ef);
                                                                  }
                                                                  §§goto(addr04cd);
                                                               }
                                                               §§goto(addr0281);
                                                            }
                                                            §§goto(addr01b4);
                                                         }
                                                         §§goto(addr0350);
                                                      }
                                                      §§goto(addr00ef);
                                                   }
                                                   §§goto(addr0492);
                                                }
                                                §§goto(addr04a4);
                                             }
                                             §§goto(addr0545);
                                          }
                                          §§goto(addr0106);
                                       }
                                       else
                                       {
                                          §§push(Boolean(param1));
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§goto(addr040e);
                                          }
                                       }
                                       §§goto(addr0448);
                                    }
                                    addr00ef:
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          return this.fillUpConstructionVo(param1,param2);
                                       }
                                    }
                                    else
                                    {
                                       addr0106:
                                       §§push(param1 is InfrastructureBuildingFieldObjectVo);
                                       if(!_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                return this.fillUpInfrastructureBuildingVo(param1 as InfrastructureBuildingFieldObjectVo);
                                             }
                                             addr0540:
                                             §§push(param1 is ExpansionFieldObjectVo);
                                          }
                                          else
                                          {
                                             §§push(param1 is InfrastructureDecorationFieldObjectVo);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr014f);
                                                   }
                                                   else
                                                   {
                                                      addr03a0:
                                                      §§push(param1 is CinemaFieldObjectVo);
                                                      if(_loc4_)
                                                      {
                                                         addr03ab:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr03b4);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(param1 is ScheduledDropFieldObjectVo);
                                                            if(_loc4_)
                                                            {
                                                               addr03d8:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc4_ || Boolean(param2))
                                                                  {
                                                                     §§goto(addr03ea);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr045f);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr0448:
                                                               §§push(§§pop());
                                                               if(!(_loc3_ && Boolean(param1)))
                                                               {
                                                                  addr0456:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr045f:
                                                                        return this.fillUpEmergencyVo(param1);
                                                                     }
                                                                     addr04dc:
                                                                     §§push(param1 is ProductionFieldObjectVo);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr04ef:
                                                                        var _temp_19:* = §§pop();
                                                                        addr04f0:
                                                                        §§push(_temp_19);
                                                                        if(!_temp_19)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr04f9);
                                                                           }
                                                                        }
                                                                        §§goto(addr0512);
                                                                     }
                                                                     addr04f9:
                                                                     §§pop();
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(param1 is PowerplantFieldObjectVo);
                                                                        if(_loc4_ || Boolean(param1))
                                                                        {
                                                                           addr0512:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_ || Boolean(param1))
                                                                              {
                                                                                 return this.fillUpSecurityGradeVo(param1 as BillboardObjectVo);
                                                                                 addr0524:
                                                                              }
                                                                           }
                                                                           §§goto(addr0540);
                                                                        }
                                                                        addr0545:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              addr0562:
                                                                              return this.fillUpExpansionVo(param1 as ExpansionFieldObjectVo);
                                                                              addr0557:
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr0563);
                                                                  }
                                                                  §§goto(addr0563);
                                                               }
                                                               §§goto(addr04ef);
                                                            }
                                                            §§goto(addr0563);
                                                         }
                                                         §§goto(addr0540);
                                                      }
                                                      else
                                                      {
                                                         addr042f:
                                                         §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            addr0435:
                                                            §§push(param1.hasEmergency());
                                                            if(_loc4_ || Boolean(param1))
                                                            {
                                                               §§goto(addr0448);
                                                            }
                                                            §§goto(addr04f9);
                                                         }
                                                         else
                                                         {
                                                            addr04b3:
                                                            §§push(param1 is ShopFieldObjectVo);
                                                            if(!_loc3_)
                                                            {
                                                               addr04bd:
                                                               var _temp_24:* = §§pop();
                                                               §§push(_temp_24);
                                                               §§push(_temp_24);
                                                               if(_loc4_)
                                                               {
                                                                  addr04c4:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr04cd:
                                                                        §§pop();
                                                                        if(_loc4_ || Boolean(param2))
                                                                        {
                                                                           §§goto(addr04dc);
                                                                        }
                                                                        §§goto(addr0557);
                                                                     }
                                                                     §§goto(addr0512);
                                                                  }
                                                                  §§goto(addr04ef);
                                                               }
                                                               §§goto(addr04f0);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(param1 is ResidentialFieldObjectVo);
                                                   if(!(_loc3_ && Boolean(param2)))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_ || Boolean(param1))
                                                         {
                                                            return this.fillUpResidentialVo(param1 as ResidentialFieldObjectVo);
                                                         }
                                                         §§goto(addr0435);
                                                      }
                                                      else
                                                      {
                                                         §§push(param1 is ProductionFieldObjectVo);
                                                         if(!_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr01b4:
                                                                  return this.fillUpProductionVo(param1 as ProductionFieldObjectVo);
                                                               }
                                                               §§goto(addr03a0);
                                                            }
                                                            else
                                                            {
                                                               addr01ce:
                                                               §§push(param1 is ShopFieldObjectVo);
                                                               if(!(_loc3_ && Boolean(param2)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        return this.fillUpShopVo(param1 as ShopFieldObjectVo);
                                                                     }
                                                                     §§goto(addr04dc);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(param1 is DecorationFieldObjectVo);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              return fillUpDecoVo(param1 as DecorationFieldObjectVo);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(param1 is PowerplantFieldObjectVo);
                                                                           if(!(_loc3_ && Boolean(param1)))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    return this.fillUpPowerVo(param1 as PowerplantFieldObjectVo);
                                                                                 }
                                                                                 addr02da:
                                                                                 §§push(param1 is CitySquareFieldObjectVo);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr02e4);
                                                                                 }
                                                                                 §§goto(addr03d8);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(param1 is BoulderObjectVo);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    addr0281:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          return this.fillUpBoulderVo(param1 as BoulderObjectVo);
                                                                                       }
                                                                                       §§goto(addr03a0);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(param1 is ExpansionFieldObjectVo);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§push(this.fillUpExpansionVo(param1 as ExpansionFieldObjectVo));
                                                                                                if(!(_loc3_ && Boolean(param1)))
                                                                                                {
                                                                                                   return §§pop();
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0435);
                                                                                             }
                                                                                             §§goto(addr0562);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr02da);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr042f);
                                                                                 }
                                                                              }
                                                                              addr02e4:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    return this.fillUpCitySquareVo(param1 as CitySquareFieldObjectVo);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(param1 is AcademyFieldObjectVo);
                                                                                 if(_loc4_ || Boolean(param1))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc4_ || Boolean(param2))
                                                                                       {
                                                                                          return this.fillUpAcademyVo(param1 as AcademyFieldObjectVo);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(param1 is SpecialFieldObjectVo);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr0350:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc4_ || Boolean(param2))
                                                                                             {
                                                                                                §§push(param1 is TownHallFieldObjectVo);
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc3_ && Boolean(param1)))
                                                                                                      {
                                                                                                         return this.fillUpTownHallVo(param1 as SpecialFieldObjectVo);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr03a0);
                                                                                                   }
                                                                                                   §§goto(addr0563);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0484:
                                                                                                   var _temp_38:* = §§pop();
                                                                                                   §§push(_temp_38);
                                                                                                   §§push(_temp_38);
                                                                                                   if(!(_loc3_ && Boolean(param2)))
                                                                                                   {
                                                                                                      addr0492:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc4_ || Boolean(param2))
                                                                                                         {
                                                                                                            addr04a4:
                                                                                                            §§pop();
                                                                                                            if(_loc4_ || Boolean(this))
                                                                                                            {
                                                                                                               §§goto(addr04b3);
                                                                                                            }
                                                                                                            §§goto(addr0524);
                                                                                                         }
                                                                                                         §§goto(addr0512);
                                                                                                      }
                                                                                                      §§goto(addr04bd);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr04c4);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0563);
                                                                                       }
                                                                                       §§goto(addr0512);
                                                                                    }
                                                                                    addr03b4:
                                                                                    return this.fillUpCinemaVo(param1 as CinemaFieldObjectVo);
                                                                                 }
                                                                                 addr040e:
                                                                                 var _temp_42:* = §§pop();
                                                                                 §§push(_temp_42);
                                                                                 §§push(_temp_42);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc4_ || Boolean(param1))
                                                                                       {
                                                                                          §§goto(addr042f);
                                                                                       }
                                                                                       §§goto(addr04cd);
                                                                                    }
                                                                                    §§goto(addr0456);
                                                                                 }
                                                                                 §§goto(addr04f0);
                                                                              }
                                                                              addr03ea:
                                                                              return this.fillUpScheduledDropVo(param1 as ScheduledDropFieldObjectVo);
                                                                           }
                                                                           §§goto(addr04bd);
                                                                        }
                                                                        §§goto(addr0563);
                                                                     }
                                                                     §§goto(addr03d8);
                                                                  }
                                                                  §§goto(addr0563);
                                                               }
                                                            }
                                                            §§goto(addr0448);
                                                         }
                                                         §§goto(addr040e);
                                                      }
                                                      §§goto(addr04f0);
                                                   }
                                                }
                                                §§goto(addr0545);
                                             }
                                             §§goto(addr0281);
                                          }
                                          §§goto(addr0545);
                                       }
                                       §§goto(addr042f);
                                    }
                                    addr0563:
                                    return null;
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr02da);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr04f0);
                  }
                  §§goto(addr03ab);
               }
               §§goto(addr01ce);
            }
            else
            {
               §§push(param1 is ResidentialFieldObjectVo);
               if(_loc4_)
               {
                  §§goto(addr0484);
               }
            }
            §§goto(addr04f9);
         }
         addr014f:
         return fillUpInfrastructureDecorationVo(param1 as InfrastructureDecorationFieldObjectVo);
      }
      
      public function getVoForConfig(param1:ConfigPlayfieldItemDTO) : Object
      {
         return this.fillUpConfigPlayfieldItemVo(param1);
      }
      
      private function fillUpConfigPlayfieldItemVo(param1:ConfigPlayfieldItemDTO) : FieldInfoLayerConfigPlayfieldItemVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FieldInfoLayerConfigPlayfieldItemVo = new FieldInfoLayerConfigPlayfieldItemVo(param1);
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               addr004c:
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
               if(!_loc4_)
               {
                  _loc2_.headerText = getBuildingNameByConfig(param1);
               }
            }
            return _loc2_;
         }
         §§goto(addr004c);
      }
      
      private function fillUpSecurityGradeVo(param1:BillboardObjectVo) : FieldInfoLayerSecurityGradeVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:FieldInfoLayerSecurityGradeVo = new FieldInfoLayerSecurityGradeVo();
         if(_loc6_ || Boolean(param1))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(!_loc5_)
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  addr0051:
                  _loc2_.headerText = getBuildingName(param1);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.heat.info");
                  }
               }
               var _loc3_:Vector.<SecurityStatusComponentVo> = new Vector.<SecurityStatusComponentVo>();
               var _loc4_:Object = {};
               _loc4_.checks = false;
               if(_loc6_)
               {
                  _loc4_.dept = ServerTagConstants.FIRE_DEPARTMENT;
                  if(!_loc5_)
                  {
                     _loc4_.grade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.FIRE_DEPARTMENT);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        if(_loc4_.grade != -1)
                        {
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              _loc3_.push(new SecurityStatusComponentVo(_loc4_));
                              if(_loc6_)
                              {
                                 addr010a:
                                 _loc4_.dept = ServerTagConstants.POLICE_DEPARTMENT;
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    _loc4_.grade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.POLICE_DEPARTMENT);
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr0148:
                                       if(_loc4_.grade != -1)
                                       {
                                          if(!_loc5_)
                                          {
                                             _loc3_.push(new SecurityStatusComponentVo(_loc4_));
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                addr0174:
                                                _loc4_.dept = ServerTagConstants.HOSPITAL;
                                                if(_loc6_)
                                                {
                                                   addr0184:
                                                   _loc4_.grade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.HOSPITAL);
                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                   {
                                                      addr01b9:
                                                      if(_loc4_.grade != -1)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr01ca);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr01dd);
                                                }
                                             }
                                             §§goto(addr01ca);
                                          }
                                          §§goto(addr01dd);
                                       }
                                       §§goto(addr0174);
                                    }
                                    §§goto(addr01dd);
                                 }
                                 §§goto(addr0148);
                              }
                              addr01ca:
                              _loc3_.push(new SecurityStatusComponentVo(_loc4_));
                              if(!_loc5_)
                              {
                                 addr01dd:
                                 _loc2_.securityGrades = _loc3_;
                              }
                              return _loc2_;
                           }
                           §§goto(addr01b9);
                        }
                        §§goto(addr010a);
                     }
                     §§goto(addr0184);
                  }
               }
               §§goto(addr0148);
            }
         }
         §§goto(addr0051);
      }
      
      private function fillUpInfrastructureBuildingVo(param1:InfrastructureBuildingFieldObjectVo) : FieldInfoLayerInfrastructureBuildingVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FieldInfoLayerInfrastructureBuildingVo = new FieldInfoLayerInfrastructureBuildingVo();
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(!(_loc3_ && Boolean(param1)))
            {
               §§goto(addr0040);
            }
            §§goto(addr009c);
         }
         addr0040:
         _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
         if(!(_loc3_ && Boolean(param1)))
         {
            _loc2_.headerText = getBuildingName(param1);
            if(!_loc3_)
            {
               §§goto(addr0072);
            }
            §§goto(addr00c4);
         }
         addr0072:
         _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.department.info");
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            addr009c:
            _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
            if(!(_loc3_ && Boolean(param1)))
            {
               addr00c4:
               _loc2_.departmentProfessionalData = this.getDepartmentProfessionals(param1);
            }
         }
         return _loc2_;
      }
      
      private function fillUpAcademyVo(param1:AcademyFieldObjectVo) : FieldInfoLayerAcademyVo
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc3_:ProfessionalDTO = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:TimerBarComponentVo = null;
         var _loc2_:FieldInfoLayerAcademyVo = new FieldInfoLayerAcademyVo();
         if(_loc10_ || Boolean(this))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(_loc10_)
            {
               _loc2_.headerText = getBuildingName(param1);
               if(!(_loc11_ && Boolean(this)))
               {
                  §§push(!param1.isUnderConstruction());
                  if(!_loc11_)
                  {
                     §§push(§§pop());
                     if(!(_loc11_ && Boolean(_loc3_)))
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(!_loc11_)
                        {
                           if(§§pop())
                           {
                              if(_loc10_ || Boolean(_loc3_))
                              {
                                 §§pop();
                                 if(!_loc11_)
                                 {
                                    §§push(param1.buildingDTO.professionals);
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       addr00c3:
                                       var _temp_7:* = §§pop();
                                       addr00c4:
                                       §§push(_temp_7);
                                       if(_temp_7)
                                       {
                                          if(_loc10_ || Boolean(this))
                                          {
                                             addr00d6:
                                             §§pop();
                                             if(!(_loc11_ && Boolean(_loc3_)))
                                             {
                                                addr00f1:
                                                addr00e5:
                                                if(param1.buildingDTO.professionals.length > 0)
                                                {
                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                   {
                                                      addr0103:
                                                      _loc3_ = param1.buildingDTO.professionals[0];
                                                      if(!(_loc11_ && Boolean(_loc2_)))
                                                      {
                                                         _loc2_.currentTraineeConfig = _loc3_;
                                                         if(!_loc11_)
                                                         {
                                                            §§push(LocaUtils.getString("rcl.professions.nameconvention","rcl.professions.nameconvention.fistnamelastname"));
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc10_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr014d:
                                                                     if(_loc3_.gender == 1)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push("male");
                                                                           if(_loc10_)
                                                                           {
                                                                           }
                                                                           addr016e:
                                                                           §§push(§§pop());
                                                                           if(!(_loc11_ && Boolean(param1)))
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(_loc10_ || Boolean(_loc3_))
                                                                              {
                                                                                 §§push(LocaUtils);
                                                                                 §§push("rcl.professions.firstnames.");
                                                                                 if(!(_loc11_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§push(§§pop() + _loc5_);
                                                                                 }
                                                                                 §§push("rcl.professions.firstnames.");
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc5_);
                                                                                    if(_loc10_ || Boolean(_loc2_))
                                                                                    {
                                                                                       §§push(§§pop() + ".");
                                                                                       if(_loc10_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr01cf:
                                                                                          §§push(§§pop() + _loc3_.name);
                                                                                       }
                                                                                       §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                       if(_loc10_ || Boolean(param1))
                                                                                       {
                                                                                          addr01e5:
                                                                                          §§push(§§pop());
                                                                                          if(_loc10_ || Boolean(this))
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             if(!(_loc11_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                §§push(LocaUtils);
                                                                                                §§push("rcl.professions.surnames.");
                                                                                                if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   §§push(§§pop() + _loc5_);
                                                                                                }
                                                                                                §§push("rcl.professions.surnames.");
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   addr0259:
                                                                                                   §§push(§§pop() + _loc5_);
                                                                                                   if(!(_loc11_ && Boolean(param1)))
                                                                                                   {
                                                                                                      addr0240:
                                                                                                      §§push(§§pop() + ".");
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc3_.surname);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr0258:
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr0261:
                                                                                                      _loc2_.traineeName = StringUtil.substitute(_loc4_,_loc6_,_loc7_);
                                                                                                   }
                                                                                                   addr0273:
                                                                                                   _loc2_.modifier = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
                                                                                                   addr03bb:
                                                                                                   var _loc9_:* = param1.currentAcademyMode;
                                                                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(AcademyFieldObjectVo.ACADEMY_MODE_START);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(!(_loc11_ && Boolean(param1)))
                                                                                                         {
                                                                                                            if(§§pop() !== §§pop())
                                                                                                            {
                                                                                                               §§push(AcademyFieldObjectVo.ACADEMY_MODE_WAIT);
                                                                                                               if(_loc10_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr0416:
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr041e:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr0428:
                                                                                                                           §§push(1);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr044d);
                                                                                                                        }
                                                                                                                        §§goto(addr046d);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr0449);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr0449:
                                                                                                                  §§goto(addr0447);
                                                                                                               }
                                                                                                               addr0447:
                                                                                                               if(AcademyFieldObjectVo.ACADEMY_MODE_FINISH === _loc9_)
                                                                                                               {
                                                                                                                  §§goto(addr044d);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(3);
                                                                                                               }
                                                                                                               addr046d:
                                                                                                               switch(§§pop())
                                                                                                               {
                                                                                                                  case 0:
                                                                                                                     _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.start");
                                                                                                                     if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.info.trainee");
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           _loc2_.layerMode = INFOLAYER_HARVEST_READY;
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                                                                                                                           if(!(_loc11_ && Boolean(param1)))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr02fa:
                                                                                                                        _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.info.training");
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc8_ = this.getPhaseInfo(param1,ServerPhaseTypes.PRODUCTION);
                                                                                                                     if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        _loc2_.harvestProgressVo = _loc8_;
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr0378:
                                                                                                                     _loc2_.layerMode = INFOLAYER_HARVEST_READY;
                                                                                                                     if(_loc10_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr038d:
                                                                                                                        _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.info.finished");
                                                                                                                        if(_loc11_ && Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                                                                                                                     break;
                                                                                                                  case 1:
                                                                                                                     _loc2_.preHeaderText = "";
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr02fa);
                                                                                                                     break;
                                                                                                                  case 2:
                                                                                                                     _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.school.finish");
                                                                                                                     if(_loc10_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§goto(addr0378);
                                                                                                                     }
                                                                                                                     §§goto(addr038d);
                                                                                                               }
                                                                                                               return _loc2_;
                                                                                                            }
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr044d:
                                                                                                               §§push(2);
                                                                                                               if(_loc11_ && Boolean(this))
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr046d);
                                                                                                            §§goto(addr044d);
                                                                                                         }
                                                                                                         §§goto(addr041e);
                                                                                                      }
                                                                                                      §§goto(addr0416);
                                                                                                   }
                                                                                                   §§goto(addr0428);
                                                                                                }
                                                                                                §§goto(addr0240);
                                                                                             }
                                                                                             §§goto(addr0273);
                                                                                          }
                                                                                          §§goto(addr0259);
                                                                                       }
                                                                                       §§goto(addr0258);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01cf);
                                                                              }
                                                                              §§goto(addr0261);
                                                                           }
                                                                           §§goto(addr01e5);
                                                                        }
                                                                        §§goto(addr0273);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("female");
                                                                     }
                                                                     §§goto(addr016e);
                                                                  }
                                                                  §§goto(addr0273);
                                                               }
                                                            }
                                                            §§goto(addr0258);
                                                         }
                                                         §§goto(addr0261);
                                                      }
                                                      §§goto(addr014d);
                                                   }
                                                   §§goto(addr03bb);
                                                }
                                                §§goto(addr0273);
                                             }
                                             §§goto(addr03bb);
                                          }
                                       }
                                       §§goto(addr00f1);
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr0103);
                              }
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00e5);
            }
            §§goto(addr0103);
         }
         §§goto(addr03bb);
      }
      
      private function fillUpEmergencyVo(param1:BillboardObjectVo) : FieldInfoLayerEmergencyVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:EmergencyZoneLayerVo = null;
         var _loc4_:EmergencyMiniLayerProxy = null;
         var _loc2_:FieldInfoLayerEmergencyVo = new FieldInfoLayerEmergencyVo();
         if(_loc5_)
         {
            _loc2_.emergencyStatus = param1.emergencyState;
            if(_loc5_ || Boolean(param1))
            {
               _loc2_.icon_dynaLibName = LIB_PATH;
               if(!(_loc6_ && Boolean(this)))
               {
                  _loc2_.headerText = getBuildingName(param1);
                  if(!_loc6_)
                  {
                     §§push(param1.emergencyState);
                     if(_loc5_ || Boolean(this))
                     {
                        §§push(EmergencyConstants.EMERGENCY_STATUS_STARTED);
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 _loc3_ = this._emergencyLayerProxy.getEmergencyZoneLayerVo(param1);
                                 if(_loc5_)
                                 {
                                    _loc2_.icon_dynaBmpSourceName = ICON_BIG_EMERGENCY;
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.start");
                                       if(_loc5_)
                                       {
                                          _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.info.zones");
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             §§goto(addr010e);
                                          }
                                          §§goto(addr012a);
                                       }
                                       addr010e:
                                       _loc2_.securityData = getSecurityVector(_loc3_);
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          addr012a:
                                          _loc2_.timerVo = _loc3_.timerData;
                                       }
                                       §§goto(addr022d);
                                    }
                                    §§goto(addr012a);
                                 }
                              }
                              else
                              {
                                 addr0183:
                                 _loc4_ = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
                                 if(!_loc6_)
                                 {
                                    _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.fail");
                                    if(_loc5_)
                                    {
                                       _loc2_.damageData = _loc4_.getEmergencyDamagedVo(param1);
                                       if(_loc5_)
                                       {
                                          addr01c3:
                                          _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.info.fail");
                                       }
                                       §§goto(addr022d);
                                    }
                                    §§goto(addr01c3);
                                 }
                              }
                           }
                           else
                           {
                              _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                              if(_loc5_ || Boolean(this))
                              {
                                 addr014b:
                                 §§push(param1.emergencyState);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    addr015d:
                                    §§push(EmergencyConstants.EMERGENCY_STATUS_FAIL);
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       addr0171:
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             §§goto(addr0183);
                                          }
                                          else
                                          {
                                             addr021d:
                                             _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.info.success");
                                          }
                                       }
                                       else
                                       {
                                          addr01e1:
                                          addr01db:
                                          if(param1.emergencyState == EmergencyConstants.EMERGENCY_STATUS_SUCCESS)
                                          {
                                             if(_loc5_ || Boolean(_loc2_))
                                             {
                                                addr01ff:
                                                _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.emergency.success");
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr021d);
                                                }
                                                §§goto(addr022d);
                                             }
                                             §§goto(addr021d);
                                          }
                                       }
                                       §§goto(addr022d);
                                    }
                                    §§goto(addr01e1);
                                 }
                                 §§goto(addr01db);
                              }
                              §§goto(addr021d);
                           }
                           addr022d:
                           return _loc2_;
                        }
                        §§goto(addr0171);
                     }
                     §§goto(addr015d);
                  }
                  §§goto(addr01ff);
               }
            }
            §§goto(addr021d);
         }
         §§goto(addr014b);
      }
      
      private function fillUpCinemaVo(param1:CinemaFieldObjectVo) : FieldInfoLayerCinemaVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FieldInfoLayerCinemaVo = new FieldInfoLayerCinemaVo();
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(!_loc4_)
            {
               _loc2_.headerText = getBuildingName(param1);
               if(_loc3_)
               {
                  addr004a:
                  §§push(param1.videoAvailable);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.preHeader.available");
                           if(!_loc4_)
                           {
                              addr007a:
                              _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                              if(!_loc4_)
                              {
                                 _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.text.available");
                                 if(_loc3_ || Boolean(this))
                                 {
                                 }
                                 addr017f:
                                 _loc2_.moodEnergyModifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
                              }
                              else
                              {
                                 addr0121:
                                 _loc2_.icon_dynaBmpSourceName = ICON_BIG_X;
                                 if(!_loc4_)
                                 {
                                    addr012e:
                                    _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.preHeader.maintenance");
                                    if(!_loc3_)
                                    {
                                       _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.text.unAvailable");
                                       addr0154:
                                       if(!(_loc4_ && Boolean(param1)))
                                       {
                                          §§goto(addr017f);
                                       }
                                       §§goto(addr019a);
                                    }
                                    §§goto(addr017f);
                                 }
                              }
                           }
                           §§goto(addr019a);
                        }
                        §§goto(addr017f);
                     }
                     else
                     {
                        _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.preHeader.unAvailable");
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(param1.disabled);
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    _loc2_.icon_dynaBmpSourceName = ICON_BIG_X;
                                    if(!_loc4_)
                                    {
                                       addr00f2:
                                       _loc2_.infoText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.preHeader.disabled");
                                       if(_loc4_ && _loc3_)
                                       {
                                          §§goto(addr012e);
                                       }
                                       §§goto(addr017f);
                                    }
                                    else
                                    {
                                       §§goto(addr0121);
                                    }
                                 }
                                 §§goto(addr0154);
                              }
                              else
                              {
                                 addr0118:
                                 if(param1.inMaintenance)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr0121);
                                    }
                                    §§goto(addr017f);
                                 }
                                 else
                                 {
                                    _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                                    if(!_loc4_)
                                    {
                                       §§goto(addr0154);
                                    }
                                 }
                              }
                              addr019a:
                              return _loc2_;
                           }
                           §§goto(addr0118);
                        }
                        §§goto(addr00f2);
                     }
                  }
                  §§goto(addr0118);
               }
               §§goto(addr007a);
            }
            §§goto(addr00f2);
         }
         §§goto(addr004a);
      }
      
      private function fillUpScheduledDropVo(param1:ScheduledDropFieldObjectVo) : FieldInfoLayerScheduledDropVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:FieldInfoLayerScheduledDropVo = new FieldInfoLayerScheduledDropVo();
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(!_loc4_)
            {
               _loc2_.headerText = getBuildingName(param1);
               if(_loc5_ || Boolean(_loc2_))
               {
                  if(param1.isHarvestReady)
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        addr006b:
                        _loc2_.flavourText = this.getScheduledVoFlavourText(param1,true);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           _loc2_.showHarvestProgress = false;
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr00e2:
                              _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                           }
                           §§goto(addr00e9);
                        }
                        else
                        {
                           addr00b9:
                           _loc2_.showHarvestProgress = true;
                           if(_loc5_)
                           {
                              addr00c4:
                              _loc2_.harvestProgress = this.getPhaseInfo(param1,ServerPhaseTypes.RANDOM_REWARD_HARVEST);
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 §§goto(addr00e2);
                              }
                              §§goto(addr00e9);
                           }
                        }
                        §§goto(addr00e2);
                     }
                     addr00e9:
                     var _loc3_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(Boolean(_loc3_));
                        if(_loc5_)
                        {
                           var _temp_8:* = §§pop();
                           §§push(_temp_8);
                           if(_temp_8)
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§goto(addr0151);
                                 }
                                 §§goto(addr0178);
                              }
                           }
                           addr0151:
                           §§push(_loc3_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY));
                           if(!(_loc4_ && Boolean(this)))
                           {
                              addr0150:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 _loc2_.icon_dynaLibName = LIB_PATH;
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    addr0178:
                                    _loc2_.icon_dynaBmpSourceName = ICON_BONUSDAY;
                                 }
                              }
                           }
                           §§goto(addr017f);
                        }
                        §§goto(addr0150);
                     }
                     addr017f:
                     return _loc2_;
                  }
                  _loc2_.flavourText = this.getScheduledVoFlavourText(param1,false);
                  if(!_loc4_)
                  {
                     §§goto(addr00b9);
                  }
                  §§goto(addr00e2);
               }
            }
            §§goto(addr00c4);
         }
         §§goto(addr006b);
      }
      
      private function getScheduledVoFlavourText(param1:ScheduledDropFieldObjectVo, param2:Boolean) : String
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(param2)
            {
               §§goto(addr0075);
            }
            else
            {
               §§push(param1.tagType);
            }
            §§goto(addr01ac);
         }
         addr0075:
         §§push(param1.tagType);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(ServerTagConstants.CHRISTMAS_TREE);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || param2)
                        {
                           §§push(0);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr012b);
                           }
                           §§goto(addr0212);
                        }
                        §§goto(addr01e4);
                     }
                     else
                     {
                        §§push(ServerTagConstants.CLIENT_OLYMPIC_STADIUM);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              addr00f3:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param2)
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       §§goto(addr012b);
                                    }
                                    §§goto(addr0212);
                                 }
                                 §§goto(addr01b3);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_ || param2)
                                 {
                                    addr012b:
                                    if(!_loc4_)
                                    {
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push(LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.christmastree.text.harvestready"));
                                             if(!(_loc4_ && param2))
                                             {
                                                return §§pop();
                                             }
                                             break;
                                          case 1:
                                             §§push(LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.olympicStadium.text.harvestready"));
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                return §§pop();
                                             }
                                       }
                                       §§goto(addr019c);
                                    }
                                    else
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.christmastree.text.untilnext"));
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             case 1:
                                                §§push(LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.olympicStadium.text.untilnext"));
                                                if(!(_loc5_ || Boolean(this)))
                                                {
                                                   break;
                                                }
                                                §§goto(addr019c);
                                          }
                                          addr01ac:
                                          loop0:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   §§push(ServerTagConstants.CHRISTMAS_TREE);
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc5_)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr01e4:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc5_)
                                                                        {
                                                                        }
                                                                     }
                                                                     break;
                                                                     addr01fa:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  break;
                                                                  addr0212:
                                                               }
                                                               else
                                                               {
                                                                  §§push(ServerTagConstants.CLIENT_OLYMPIC_STADIUM);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr01f6:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           §§goto(addr01fa);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(2);
                                                                        }
                                                                        §§goto(addr0212);
                                                                     }
                                                                  }
                                                                  addr01f5:
                                                               }
                                                               §§goto(addr01fa);
                                                            }
                                                            break loop0;
                                                            addr01da:
                                                         }
                                                         §§goto(addr01f6);
                                                      }
                                                      addr01c6:
                                                   }
                                                   §§goto(addr01f5);
                                                }
                                                addr01b3:
                                             }
                                             §§goto(addr01fa);
                                          }
                                          §§goto(addr019c);
                                       }
                                    }
                                    return "";
                                 }
                              }
                              §§goto(addr0212);
                           }
                           §§goto(addr01da);
                        }
                     }
                     §§goto(addr01c6);
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr01c6);
            }
            §§goto(addr01e4);
         }
         addr019c:
         return §§pop();
      }
      
      private function fillUpConstructionVo(param1:BillboardObjectVo, param2:BillboardObject = null) : FieldInfoLayerConstructionVo
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:PhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:MiniLayerProxy = null;
         var _loc3_:FieldInfoLayerConstructionVo = new FieldInfoLayerConstructionVo();
         if(!(_loc13_ && Boolean(this)))
         {
            _loc3_.icon_dynaLibName = LIB_PATH;
            if(_loc12_ || Boolean(param2))
            {
               _loc3_.icon_dynaBmpSourceName = ICON_BIG_INFO;
               if(!(_loc13_ && Boolean(param1)))
               {
                  _loc3_.preHeaderText = "";
                  if(!_loc13_)
                  {
                     §§push(param1 is TownHallFieldObjectVo);
                     if(!(_loc13_ && Boolean(_loc3_)))
                     {
                        if(§§pop())
                        {
                           if(_loc12_)
                           {
                              _loc3_.headerText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.name");
                              if(_loc12_)
                              {
                                 addr00cc:
                                 _loc3_.constructionMode = this.checkConstructionPhase(param1);
                                 if(_loc12_ || Boolean(this))
                                 {
                                    addr00e4:
                                    _loc3_.moveInMode = this.checkMoveInPhase(param1);
                                    if(!_loc13_)
                                    {
                                       §§push(_loc3_.moveInMode);
                                       if(_loc12_ || Boolean(_loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc12_ || Boolean(_loc3_))
                                             {
                                                addr0118:
                                                _loc3_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
                                                if(!_loc13_)
                                                {
                                                   addr012d:
                                                   §§push(_loc3_.constructionMode);
                                                   if(_loc12_ || Boolean(_loc3_))
                                                   {
                                                      addr013f:
                                                      §§push(§§pop());
                                                      if(!(_loc13_ && Boolean(_loc3_)))
                                                      {
                                                         addr014e:
                                                         var _temp_10:* = §§pop();
                                                         §§push(_temp_10);
                                                         if(!_temp_10)
                                                         {
                                                            if(!(_loc13_ && Boolean(_loc3_)))
                                                            {
                                                               addr0161:
                                                               §§pop();
                                                               if(_loc12_ || Boolean(param1))
                                                               {
                                                                  addr017b:
                                                                  addr0170:
                                                                  §§push(_loc3_.moveInMode);
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr017a:
                                                                     §§push(§§pop());
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc13_ && Boolean(this)))
                                                                     {
                                                                        addr018d:
                                                                        _loc3_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                                                                        if(_loc12_ || Boolean(this))
                                                                        {
                                                                           addr01a2:
                                                                           _loc3_.harvestProgressVo = this.getPhaseInfo(param1,ServerPhaseTypes.CREATE_CONSTRUCTION);
                                                                           if(_loc12_)
                                                                           {
                                                                              if(_loc3_.harvestProgressVo.cycleLength <= 0)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    addr01cb:
                                                                                    _loc3_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr01da:
                                                                           var _loc4_:int = 0;
                                                                           var _loc5_:int = 0;
                                                                           var _loc10_:* = 0;
                                                                           var _loc11_:* = param1.activePhases;
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc11_,_loc10_));
                                                                              if(_loc13_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(_loc12_ || Boolean(param2))
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                addr0319:
                                                                                                §§push(0);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   _loc10_ = §§pop();
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      addr0329:
                                                                                                      _loc11_ = param1.configPlayfieldItemVo.constructionPhases;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc11_,_loc10_));
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      addr03cc:
                                                                                                      addr03c5:
                                                                                                   }
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      addr03d6:
                                                                                                      §§push(_loc4_);
                                                                                                      if(!(_loc13_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         addr03e6:
                                                                                                         §§push(§§pop() >= _loc5_);
                                                                                                         if(!(_loc13_ && Boolean(param2)))
                                                                                                         {
                                                                                                            var _temp_18:* = §§pop();
                                                                                                            §§push(_temp_18);
                                                                                                            if(_temp_18)
                                                                                                            {
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc12_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§goto(addr0414);
                                                                                                                  }
                                                                                                                  §§goto(addr045a);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr0414:
                                                                                                         §§goto(addr0413);
                                                                                                      }
                                                                                                      addr0413:
                                                                                                      addr0411:
                                                                                                      if(Boolean(_loc4_))
                                                                                                      {
                                                                                                         if(_loc12_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            _loc3_.stepLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.step",[_loc5_,_loc4_]);
                                                                                                            if(_loc12_ || Boolean(param2))
                                                                                                            {
                                                                                                               §§goto(addr0455);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr045a);
                                                                                                      }
                                                                                                      §§goto(addr0455);
                                                                                                   }
                                                                                                   addr0455:
                                                                                                   if(param2)
                                                                                                   {
                                                                                                      addr045a:
                                                                                                      _loc9_ = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         _loc3_.miniLayerVo = _loc9_.getConstructionVo(param2);
                                                                                                      }
                                                                                                   }
                                                                                                   return _loc3_;
                                                                                                }
                                                                                                §§goto(addr03e6);
                                                                                             }
                                                                                             §§goto(addr0411);
                                                                                          }
                                                                                          §§goto(addr03d6);
                                                                                       }
                                                                                       §§goto(addr0319);
                                                                                    }
                                                                                    §§goto(addr0329);
                                                                                 }
                                                                                 §§goto(addr03cc);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc7_ = §§nextvalue(_loc10_,_loc11_);
                                                                                 §§push(_loc7_.config);
                                                                                 if(!(_loc13_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(§§pop().phaseType);
                                                                                    if(!(_loc13_ && Boolean(param2)))
                                                                                    {
                                                                                       §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                                                                       if(_loc12_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             var _temp_26:* = §§pop();
                                                                                             §§push(_temp_26);
                                                                                             §§push(_temp_26);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc12_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         §§push(_loc7_.config);
                                                                                                         if(!(_loc13_ && Boolean(param2)))
                                                                                                         {
                                                                                                            addr027b:
                                                                                                            §§push(§§pop().phaseType);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               addr0284:
                                                                                                               §§push(ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                                                                                               if(_loc12_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     addr029f:
                                                                                                                     var _temp_30:* = §§pop();
                                                                                                                     addr02a0:
                                                                                                                     §§push(_temp_30);
                                                                                                                     if(!_temp_30)
                                                                                                                     {
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc12_ || Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              addr02b9:
                                                                                                                              §§push(_loc7_.config);
                                                                                                                              if(_loc12_ || Boolean(_loc3_))
                                                                                                                              {
                                                                                                                                 addr02d5:
                                                                                                                                 addr02d4:
                                                                                                                                 addr02ce:
                                                                                                                                 addr02cb:
                                                                                                                                 if(§§pop().phaseType != ServerPhaseTypes.CREATE_PLACE_NORMAL)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr02d9:
                                                                                                                                 §§push(_loc7_.config);
                                                                                                                              }
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr02d9);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr02d5);
                                                                                                               }
                                                                                                               §§goto(addr02d4);
                                                                                                            }
                                                                                                            §§goto(addr02ce);
                                                                                                         }
                                                                                                         §§goto(addr02cb);
                                                                                                      }
                                                                                                      §§goto(addr02b9);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr029f);
                                                                                             }
                                                                                             §§goto(addr02a0);
                                                                                          }
                                                                                          §§goto(addr029f);
                                                                                       }
                                                                                       §§goto(addr02d4);
                                                                                    }
                                                                                    §§goto(addr0284);
                                                                                 }
                                                                                 §§goto(addr027b);
                                                                              }
                                                                           }
                                                                           while(§§pop())
                                                                           {
                                                                              _loc8_ = §§nextvalue(_loc10_,_loc11_);
                                                                              §§push(_loc8_.phaseType);
                                                                              if(_loc12_ || Boolean(param2))
                                                                              {
                                                                                 §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                                                                 if(!(_loc13_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!(_loc13_ && Boolean(param2)))
                                                                                    {
                                                                                       var _temp_37:* = §§pop();
                                                                                       §§push(_temp_37);
                                                                                       if(!_temp_37)
                                                                                       {
                                                                                          if(_loc12_ || Boolean(this))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                addr039d:
                                                                                                addr039c:
                                                                                                addr0396:
                                                                                                if(_loc8_.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
                                                                                                {
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr03a7:
                                                                                                      _loc4_++;
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         if(_loc8_.phaseOrderId <= _loc6_.phaseOrderId)
                                                                                                         {
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               addr03c3:
                                                                                                               _loc5_++;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr03c5);
                                                                                                      }
                                                                                                      §§goto(addr03c3);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr03c5);
                                                                                             }
                                                                                             §§goto(addr03a7);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr039d);
                                                                                 }
                                                                                 §§goto(addr039c);
                                                                              }
                                                                              §§goto(addr0396);
                                                                           }
                                                                           §§goto(addr03cc);
                                                                        }
                                                                     }
                                                                     §§goto(addr01cb);
                                                                  }
                                                                  §§goto(addr01a2);
                                                               }
                                                               §§goto(addr018d);
                                                            }
                                                            §§goto(addr017a);
                                                         }
                                                         §§goto(addr017b);
                                                      }
                                                      §§goto(addr0161);
                                                   }
                                                   §§goto(addr014e);
                                                }
                                                §§goto(addr018d);
                                             }
                                             §§goto(addr0170);
                                          }
                                          §§goto(addr012d);
                                       }
                                       §§goto(addr0161);
                                    }
                                    §§goto(addr0118);
                                 }
                                 §§goto(addr01cb);
                              }
                              §§goto(addr0170);
                           }
                           §§goto(addr018d);
                        }
                        else
                        {
                           _loc3_.headerText = getBuildingName(param1);
                           if(!(_loc13_ && Boolean(param2)))
                           {
                              §§goto(addr00cc);
                           }
                        }
                        §§goto(addr01da);
                     }
                     §§goto(addr013f);
                  }
                  §§goto(addr018d);
               }
               §§goto(addr01a2);
            }
            §§goto(addr01cb);
         }
         §§goto(addr00e4);
      }
      
      private function fillUpTownHallVo(param1:SpecialFieldObjectVo) : FieldInfoLayerTownHallVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:FieldInfoLayerTownHallVo = new FieldInfoLayerTownHallVo();
         if(_loc4_)
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(_loc4_ || Boolean(param1))
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.headerText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.name");
                  if(_loc4_ || Boolean(param1))
                  {
                     _loc2_.preHeaderText = "";
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        §§push(param1.isHarvestReady);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().showHarvestProgress = §§pop();
                        if(!_loc5_)
                        {
                           addr0097:
                           _loc2_.harvestProgress = this.getPhaseInfo(param1,ServerPhaseTypes.RANDOM_REWARD_HARVEST);
                           if(_loc4_)
                           {
                              §§push(param1.isReadyForUpgrade());
                              if(_loc4_)
                              {
                                 §§push(!§§pop());
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§pop();
                                             if(!(_loc5_ && Boolean(param1)))
                                             {
                                                §§push(!param1.isReadyToInaugurate);
                                                if(_loc4_)
                                                {
                                                   addr00fa:
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         _loc2_.flavourText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.flavour.normal");
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            addr012a:
                                                            _loc2_.levelText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.upgradeLevel",[param1.currentLevel]);
                                                            if(!(_loc4_ || Boolean(this)))
                                                            {
                                                               addr01ad:
                                                               _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
                                                               if(_loc4_)
                                                               {
                                                                  addr01c2:
                                                                  _loc2_.flavourText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.flavour.inaugurate");
                                                                  if(!(_loc4_ || Boolean(_loc2_)))
                                                                  {
                                                                     addr0215:
                                                                     _loc2_.flavourText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.flavour.normal");
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr022b:
                                                                        _loc2_.levelText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.townHall.upgradeLevel",[param1.currentLevel]);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr017c:
                                                            §§push(param1.isReadyForUpgrade());
                                                            if(_loc4_)
                                                            {
                                                               addr0187:
                                                               §§push(!§§pop());
                                                               if(_loc4_)
                                                               {
                                                                  addr018e:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        addr01a0:
                                                                        _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr01ad);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01e9:
                                                                     if(param1.isReadyForUpgrade())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           _loc2_.icon_dynaBmpSourceName = ICON_BIG_UPGRADE;
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr0200:
                                                                              _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.residential_upgrade_state");
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr0215);
                                                                              }
                                                                           }
                                                                           §§goto(addr022b);
                                                                        }
                                                                        §§goto(addr0200);
                                                                     }
                                                                  }
                                                                  addr0241:
                                                                  var _loc3_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(Boolean(_loc3_));
                                                                     if(!(_loc5_ && Boolean(param1)))
                                                                     {
                                                                        var _temp_15:* = §§pop();
                                                                        §§push(_temp_15);
                                                                        if(_temp_15)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr0274:
                                                                              §§pop();
                                                                              if(!(_loc5_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§goto(addr02a1);
                                                                              }
                                                                              §§goto(addr02ab);
                                                                           }
                                                                           §§goto(addr02a0);
                                                                        }
                                                                        addr02a1:
                                                                        §§push(_loc3_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY));
                                                                        if(_loc4_)
                                                                        {
                                                                           addr02a0:
                                                                           §§push(§§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              addr02ab:
                                                                              _loc2_.icon_dynaLibName = LIB_PATH;
                                                                              if(_loc4_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr02c0:
                                                                                 _loc2_.icon_dynaBmpSourceName = ICON_BONUSDAY;
                                                                              }
                                                                              §§goto(addr02c7);
                                                                           }
                                                                           §§goto(addr02c0);
                                                                        }
                                                                        addr02c7:
                                                                        return _loc2_;
                                                                     }
                                                                     §§goto(addr0274);
                                                                  }
                                                                  §§goto(addr02c0);
                                                               }
                                                               §§goto(addr01e9);
                                                            }
                                                            §§goto(addr018e);
                                                         }
                                                         §§goto(addr0241);
                                                      }
                                                      §§goto(addr01a0);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1.isReadyToInaugurate);
                                                      if(!_loc5_)
                                                      {
                                                         var _temp_18:* = §§pop();
                                                         addr016b:
                                                         §§push(_temp_18);
                                                         if(_temp_18)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr017c);
                                                               }
                                                               §§goto(addr01a0);
                                                            }
                                                            §§goto(addr01e9);
                                                         }
                                                         §§goto(addr018e);
                                                      }
                                                   }
                                                   §§goto(addr01e9);
                                                }
                                                §§goto(addr018e);
                                             }
                                             §§goto(addr0241);
                                          }
                                       }
                                       §§goto(addr00fa);
                                    }
                                    §§goto(addr016b);
                                 }
                              }
                              §§goto(addr0187);
                           }
                        }
                        §§goto(addr012a);
                     }
                     §§goto(addr0215);
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr01ad);
         }
         §§goto(addr01c2);
      }
      
      private function fillUpCitySquareVo(param1:CitySquareFieldObjectVo) : FieldInfoLayerCitySquareVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:TimerBarComponentVo = null;
         var _loc4_:EventQuestVo = null;
         var _loc2_:FieldInfoLayerCitySquareVo = new FieldInfoLayerCitySquareVo();
         if(!(_loc6_ && Boolean(this)))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(!_loc6_)
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  _loc2_.headerText = getBuildingName(param1);
                  if(!_loc6_)
                  {
                     addr006e:
                     _loc2_.preHeaderText = "";
                     if(!_loc6_)
                     {
                        addr007a:
                        _loc2_.eventState = param1.currentEventState;
                        if(_loc5_)
                        {
                           addr0088:
                           §§push(param1.currentEventState);
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              §§push(CitySquareFieldObjectVo.NONE);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       addr00b8:
                                       _loc2_.eventLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.eventSquare.noEvent");
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr00d6);
                                       }
                                    }
                                 }
                                 §§push(param1.currentEventState);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§push(CitySquareFieldObjectVo.AVAILIBLE);
                                    if(_loc5_ || Boolean(this))
                                    {
                                       §§goto(addr010c);
                                    }
                                    §§goto(addr01f6);
                                 }
                                 §§goto(addr01e2);
                              }
                              addr010c:
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    _loc2_.eventLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.eventSquare.newEvent");
                                    if(!_loc6_)
                                    {
                                       _loc3_ = new TimerBarComponentVo();
                                       if(!_loc6_)
                                       {
                                          _loc3_.startTime = this._eventProxy.availableEventQuestStartTime;
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             _loc3_.currentTime = this._timerProxy.currentTimeStamp;
                                             if(_loc5_ || Boolean(this))
                                             {
                                                _loc3_.cycleLength = this._eventProxy.availableEventQuestTotalDuration;
                                                if(_loc5_ || Boolean(_loc3_))
                                                {
                                                   _loc3_.targetTime = this._eventProxy.targetAvailableTime;
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr01b0);
                                                   }
                                                   §§goto(addr01c3);
                                                }
                                                addr01b0:
                                                _loc3_.waitingForStart = false;
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   addr01c3:
                                                   _loc2_.harvestProgress = _loc3_;
                                                   if(!(_loc5_ || Boolean(param1)))
                                                   {
                                                      §§goto(addr01d8);
                                                   }
                                                }
                                             }
                                             §§goto(addr01d6);
                                          }
                                          §§goto(addr01c3);
                                       }
                                       addr01d6:
                                       return _loc2_;
                                    }
                                    §§goto(addr021e);
                                 }
                                 §§goto(addr0208);
                              }
                              addr01d8:
                              §§push(param1.currentEventState);
                              if(_loc5_)
                              {
                                 addr01e2:
                                 §§push(CitySquareFieldObjectVo.RUNNING);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    addr01f6:
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          addr0208:
                                          _loc2_.eventLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.eventSquare.eventTime");
                                          if(!_loc6_)
                                          {
                                             addr021e:
                                             _loc3_ = new TimerBarComponentVo();
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                _loc3_.startTime = this._eventProxy.runningEventQuestStartTime;
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   _loc3_.currentTime = param1.currentTimeStamp;
                                                   if(!_loc6_)
                                                   {
                                                      _loc3_.cycleLength = this._eventProxy.runningEventQuestTotalDuration;
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr0271);
                                                      }
                                                   }
                                                   §§goto(addr0296);
                                                }
                                                addr0271:
                                                _loc3_.targetTime = this._eventProxy.targetRunningTime;
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   _loc3_.waitingForStart = false;
                                                   if(!_loc6_)
                                                   {
                                                      addr0296:
                                                      _loc2_.harvestProgress = _loc3_;
                                                   }
                                                }
                                             }
                                             §§goto(addr029b);
                                          }
                                       }
                                       §§goto(addr02a9);
                                    }
                                    addr029b:
                                    §§goto(addr02a5);
                                 }
                                 addr02a5:
                                 §§goto(addr029f);
                              }
                              addr029f:
                              if(param1.currentEventState == CitySquareFieldObjectVo.EXPIRED)
                              {
                                 addr02a9:
                                 _loc4_ = this._eventProxy.expiredEventQuest;
                                 if(!_loc6_)
                                 {
                                    _loc2_.eventLabel = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.eventSquare.eventOvertime");
                                 }
                                 _loc3_ = new TimerBarComponentVo();
                                 if(_loc5_)
                                 {
                                    _loc3_.startTime = _loc4_.quests[0].questDto.endTimeStamp;
                                    if(_loc5_)
                                    {
                                       _loc3_.cycleLength = this._configProxy.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
                                       if(_loc5_)
                                       {
                                          §§push(_loc3_);
                                          §§push(_loc3_.startTime);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + _loc3_.cycleLength);
                                          }
                                          §§pop().targetTime = §§pop();
                                          if(_loc5_)
                                          {
                                             _loc3_.currentTime = this._timerProxy.currentTimeStamp;
                                             if(!_loc6_)
                                             {
                                                addr034c:
                                                _loc3_.waitingForStart = false;
                                                if(!_loc6_)
                                                {
                                                   addr0357:
                                                   _loc2_.harvestProgress = _loc3_;
                                                }
                                             }
                                          }
                                          §§goto(addr035c);
                                       }
                                       §§goto(addr034c);
                                    }
                                    §§goto(addr035c);
                                 }
                                 §§goto(addr0357);
                              }
                              addr035c:
                              return _loc2_;
                           }
                           §§goto(addr01e2);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0088);
                  }
                  addr00d6:
                  return _loc2_;
               }
               §§goto(addr007a);
            }
         }
         §§goto(addr006e);
      }
      
      private function fillUpExpansionVo(param1:ExpansionFieldObjectVo) : FieldInfoLayerExpansionVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:FieldInfoLayerExpansionVo = new FieldInfoLayerExpansionVo();
         var _loc3_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(!_loc5_)
         {
            _loc2_.isLocked = this._resourceProxy.userLevel < _loc3_.expansionBuyUnlockLevel;
            if(_loc4_ || Boolean(this))
            {
               _loc2_.unlockLevel = _loc3_.expansionBuyUnlockLevel;
               if(!(_loc5_ && Boolean(param1)))
               {
                  _loc2_.onSale = this._expansionSaleProxy.getIsExpansionOnSale(param1.configOrigin);
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.icon_dynaLibName = LIB_PATH;
                     if(!_loc5_)
                     {
                        if(_loc2_.isLocked)
                        {
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              addr00ae:
                              _loc2_.icon_dynaBmpSourceName = ICON_LOCKED;
                              if(_loc5_)
                              {
                              }
                              addr00fd:
                              _loc2_.headerText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.name");
                              if(!_loc5_)
                              {
                                 _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.buy");
                                 if(!_loc5_)
                                 {
                                    _loc2_.secretText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.secretBuilding");
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr0148:
                                       _loc2_.hasSecretBuilding = param1.configOrigin.initialPlayfieldItems.length > 0;
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          addr0167:
                                          _loc2_.midText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.or");
                                          if(_loc4_)
                                          {
                                             §§goto(addr017d);
                                          }
                                          §§goto(addr01b9);
                                       }
                                       §§goto(addr0204);
                                    }
                                    §§goto(addr0167);
                                 }
                              }
                              §§goto(addr01d0);
                           }
                           addr017d:
                           _loc2_.realCurrencyCost = LocaUtils.getThousendSeperatedNumber(this._expansionProxy.getRCExpansionCosts(param1.configOrigin));
                           if(!_loc5_)
                           {
                              addr0199:
                              _loc2_.saleTimeLeft = this._expansionSaleProxy.getExpansionsaleTimeLeft(param1.configOrigin);
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 addr01b9:
                                 _loc2_.saleTimeTotal = this._expansionSaleProxy.getExpansionsaleTimeTotal(param1.configOrigin);
                                 if(!_loc5_)
                                 {
                                    _loc2_.discountedRealCurrencyCost = LocaUtils.getThousendSeperatedNumber(this._expansionSaleProxy.getRCExpansionCosts(param1.configOrigin));
                                    addr01d0:
                                    if(_loc4_ || Boolean(_loc3_))
                                    {
                                       addr0204:
                                       _loc2_.virtualCurrencyCost = LocaUtils.getThousendSeperatedNumber(this._expansionProxy.getVCExpansionCosts(param1.configOrigin));
                                    }
                                    §§goto(addr021a);
                                 }
                                 §§goto(addr0204);
                              }
                           }
                           addr021a:
                           return _loc2_;
                        }
                        §§push(_loc2_);
                        if(_loc4_ || Boolean(this))
                        {
                           if(_loc2_.onSale)
                           {
                              addr00d6:
                              §§push("infolayer_icon_sale");
                           }
                           else
                           {
                              §§push(ICON_BIG_INFO);
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           §§pop().icon_dynaBmpSourceName = §§pop();
                           if(_loc4_)
                           {
                              §§goto(addr00fd);
                           }
                           §§goto(addr0148);
                        }
                        §§goto(addr00d6);
                        §§goto(addr0148);
                     }
                     §§goto(addr0199);
                  }
                  §§goto(addr0204);
               }
               §§goto(addr00fd);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0199);
      }
      
      private function fillUpBoulderVo(param1:BoulderObjectVo) : FieldInfoLayerBoulderVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FieldInfoLayerBoulderVo = new FieldInfoLayerBoulderVo();
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.icon_dynaLibName = LIB_PATH;
            if(_loc4_ || _loc3_)
            {
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
               if(!_loc3_)
               {
                  §§push(param1.isStreetBoulder);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.streetboulder_destroy");
                           if(_loc4_)
                           {
                              addr0098:
                              §§push(param1.isEventBoulder);
                              if(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr016f);
                                 }
                                 else
                                 {
                                    _loc2_.headerText = getBuildingName(param1);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr0126);
                                    }
                                 }
                                 §§goto(addr0161);
                              }
                              §§goto(addr0165);
                           }
                        }
                        addr00c0:
                        §§push(_loc2_);
                        §§push(LocaUtils);
                        §§push("rcl.citysquarequests.");
                        if(_loc4_)
                        {
                           §§push(§§pop() + this._eventProxy.currentRunningEventQuestLocaleId);
                        }
                        §§push("rcl.citysquarequests.");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + this._eventProxy.currentRunningEventQuestLocaleId);
                           if(_loc4_)
                           {
                              §§goto(addr00ea);
                           }
                           §§goto(addr00f5);
                        }
                        addr00ea:
                        §§push(§§pop() + ".boulder.bouldername.");
                        if(_loc4_)
                        {
                           addr00f5:
                           §§push(§§pop() + param1.configPlayfieldItemVo.localeId);
                        }
                        §§pop().headerText = §§pop().getString(§§pop(),§§pop());
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0126:
                           _loc2_.demolitionCosts = param1.demolitionCosts;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc2_.vcStock = this._resourceProxy.ingameCurrency;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0161:
                                 addr0165:
                                 if(!_loc2_.affordable)
                                 {
                                    if(_loc4_)
                                    {
                                       addr016f:
                                       _loc2_.icon_dynaBmpSourceName = ICON_BIG_X;
                                       if(_loc4_ || Boolean(this))
                                       {
                                          addr0184:
                                          _loc2_.preHeaderText = null;
                                       }
                                    }
                                 }
                                 §§goto(addr0189);
                              }
                              §§goto(addr0184);
                           }
                        }
                        addr0189:
                        return _loc2_;
                     }
                     _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.boulder_destroy");
                     if(!_loc3_)
                     {
                        §§goto(addr0098);
                     }
                     §§goto(addr0126);
                  }
                  §§goto(addr0165);
               }
               §§goto(addr016f);
            }
            §§goto(addr0098);
         }
         §§goto(addr0126);
      }
      
      private function fillUpPowerVo(param1:PowerplantFieldObjectVo) : FieldInfoLayerPowerPlantVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:TimerBarComponentVo = null;
         var _loc2_:FieldInfoLayerPowerPlantVo = new FieldInfoLayerPowerPlantVo();
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(!param1.isConnectedToStreet)
            {
               if(!_loc4_)
               {
                  _loc2_.preHeaderText = "";
                  if(!(_loc4_ && Boolean(this)))
                  {
                     _loc2_.headerText = getBuildingName(param1);
                     if(_loc5_ || Boolean(param1))
                     {
                        _loc2_.icon_dynaLibName = LIB_PATH;
                        if(_loc5_ || Boolean(param1))
                        {
                           addr0083:
                           _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                           if(_loc5_)
                           {
                              _loc2_.harvestProgressVo = null;
                              if(_loc5_ || Boolean(this))
                              {
                                 addr00a3:
                                 _loc2_.constructionMode = this.checkConstructionPhase(param1);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    _loc2_.moveInMode = this.checkMoveInPhase(param1);
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       addr00d3:
                                       _loc2_.headerText = getBuildingName(param1);
                                       if(!_loc4_)
                                       {
                                          _loc2_.preHeaderText = "";
                                          if(_loc5_)
                                          {
                                             _loc2_.icon_dynaLibName = LIB_PATH;
                                             if(_loc5_)
                                             {
                                                _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   _loc2_.harvestProgressVo = null;
                                                   if(_loc5_)
                                                   {
                                                      _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
                                                      addr011e:
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         addr0155:
                                                         §§push(param1.isConnectedToStreet);
                                                         if(_loc5_)
                                                         {
                                                            var _temp_11:* = §§pop();
                                                            §§push(_temp_11);
                                                            §§push(_temp_11);
                                                            if(!(_loc4_ && Boolean(_loc2_)))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        addr0188:
                                                                        §§push(_loc2_.moveInMode);
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           addr019a:
                                                                           §§push(!§§pop());
                                                                           if(!(_loc4_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr01a9:
                                                                              var _temp_16:* = §§pop();
                                                                              addr01aa:
                                                                              §§push(_temp_16);
                                                                              if(_temp_16)
                                                                              {
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01c3:
                                                                                       §§push(_loc2_.constructionMode);
                                                                                       if(_loc5_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr01d5:
                                                                                          §§push(!§§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr01dc);
                                                                                          }
                                                                                          §§goto(addr0272);
                                                                                       }
                                                                                       §§goto(addr0206);
                                                                                    }
                                                                                    §§goto(addr027c);
                                                                                 }
                                                                              }
                                                                              addr01dc:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    return _loc2_;
                                                                                 }
                                                                                 addr027c:
                                                                                 _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
                                                                              }
                                                                              else if(param1.isConnectedToStreet)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(_loc2_.constructionMode);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr0206:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr0210:
                                                                                             _loc3_ = this.getPhaseInfo(param1,ServerPhaseTypes.CREATE_CONSTRUCTION);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc3_.cycleLength <= 0)
                                                                                                {
                                                                                                   if(!(_loc4_ && Boolean(param1)))
                                                                                                   {
                                                                                                      _loc3_ = null;
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
                                                                                                      }
                                                                                                      addr0265:
                                                                                                      _loc2_.harvestProgressVo = _loc3_;
                                                                                                   }
                                                                                                   §§goto(addr028b);
                                                                                                }
                                                                                                §§goto(addr0265);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr027c);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0272:
                                                                                          if(_loc2_.moveInMode)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§goto(addr027c);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr028b);
                                                                                    }
                                                                                    §§goto(addr0272);
                                                                                 }
                                                                              }
                                                                              §§goto(addr028b);
                                                                           }
                                                                        }
                                                                        §§goto(addr0272);
                                                                     }
                                                                     §§goto(addr028b);
                                                                  }
                                                                  §§goto(addr019a);
                                                               }
                                                               §§goto(addr01a9);
                                                            }
                                                            §§goto(addr01aa);
                                                         }
                                                         §§goto(addr01d5);
                                                      }
                                                      §§goto(addr027c);
                                                   }
                                                   addr028b:
                                                   return _loc2_;
                                                }
                                                §§goto(addr011e);
                                             }
                                             §§goto(addr0188);
                                          }
                                       }
                                       §§goto(addr0210);
                                    }
                                    §§goto(addr01c3);
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr0188);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr0188);
                     }
                     §§goto(addr0155);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr00d3);
            }
            §§goto(addr00a3);
         }
         §§goto(addr00d3);
      }
      
      private function fillUpShopVo(param1:ShopFieldObjectVo) : FieldInfoLayerShopVo
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:TimerBarComponentVo = null;
         var _loc6_:ShopStockGoodVo = null;
         var _loc7_:ResidentialNeedVo = null;
         var _loc2_:FieldInfoLayerShopVo = new FieldInfoLayerShopVo();
         if(!_loc10_)
         {
            if(!param1.isConnectedToStreet)
            {
               if(_loc11_)
               {
                  _loc2_.icon_dynaLibName = LIB_PATH;
                  if(!_loc10_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr007c);
               }
               addr0053:
               _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  _loc2_.preHeaderText = "";
                  if(_loc11_ || Boolean(_loc2_))
                  {
                     addr007c:
                     _loc2_.headerText = getBuildingName(param1);
                     if(!_loc10_)
                     {
                        _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
                        if(_loc10_ && Boolean(param1))
                        {
                           §§goto(addr00a5);
                        }
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr00a5);
               }
               addr00a3:
               return _loc2_;
            }
            addr00a5:
            _loc3_ = this.getPhaseInfo(param1,ServerPhaseTypes.CREATE_CONSTRUCTION);
            if(_loc11_)
            {
               _loc2_.icon_dynaLibName = LIB_PATH;
               if(_loc11_)
               {
                  _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                  if(_loc11_)
                  {
                     addr00d5:
                     _loc2_.preHeaderText = "";
                     if(!_loc10_)
                     {
                        _loc2_.headerText = getBuildingName(param1);
                        if(!(_loc10_ && Boolean(_loc3_)))
                        {
                           if(_loc3_.cycleLength <= 0)
                           {
                              if(!_loc10_)
                              {
                                 §§goto(addr010b);
                              }
                              else
                              {
                                 §§goto(addr015e);
                              }
                           }
                           else
                           {
                              _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                              if(_loc11_ || Boolean(param1))
                              {
                                 _loc2_.harvestProgressVo = _loc3_;
                                 if(!(_loc10_ && Boolean(_loc3_)))
                                 {
                                    addr014a:
                                    _loc2_.preHeaderText = "";
                                    if(_loc10_ && Boolean(_loc3_))
                                    {
                                       §§goto(addr0160);
                                    }
                                 }
                                 §§goto(addr015e);
                              }
                           }
                           §§goto(addr0160);
                        }
                        §§goto(addr014a);
                     }
                     §§goto(addr0160);
                  }
                  addr010b:
                  _loc3_ = null;
                  if(_loc11_ || Boolean(this))
                  {
                     addr0160:
                     _loc2_.constructionMode = this.checkConstructionPhase(param1);
                     if(_loc11_)
                     {
                        _loc2_.moveInMode = this.checkMoveInPhase(param1);
                        if(!_loc10_)
                        {
                           §§push(_loc2_.constructionMode);
                           if(_loc11_)
                           {
                              if(§§pop())
                              {
                                 if(_loc11_)
                                 {
                                    addr01a1:
                                    _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
                                    if(!_loc10_)
                                    {
                                       addr01b6:
                                       §§push(_loc2_.moveInMode);
                                       if(!_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc10_)
                                             {
                                                §§goto(addr01ca);
                                             }
                                          }
                                          §§goto(addr01df);
                                       }
                                       §§goto(addr0203);
                                    }
                                    §§goto(addr01df);
                                 }
                                 §§goto(addr0229);
                              }
                              §§goto(addr01b6);
                           }
                           §§goto(addr01f8);
                        }
                        §§goto(addr01a1);
                     }
                     §§goto(addr01df);
                  }
                  addr01ca:
                  _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
                  if(_loc11_)
                  {
                     addr01df:
                     §§push(_loc2_.constructionMode);
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop());
                        if(!_loc10_)
                        {
                           addr01f8:
                           var _temp_8:* = §§pop();
                           §§push(_temp_8);
                           if(!_temp_8)
                           {
                              if(_loc11_)
                              {
                                 addr0203:
                                 §§pop();
                                 if(_loc11_)
                                 {
                                    addr0215:
                                    §§push(_loc2_.moveInMode);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc10_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr0227);
                                       }
                                    }
                                    addr0229:
                                    var _loc4_:ShopDetailViewVo = this._mainLayerProxy.getShopDetailViewVo(param1,false) as ShopDetailViewVo;
                                    var _loc5_:Boolean = true;
                                    for each(_loc6_ in _loc4_.storeStock)
                                    {
                                       _loc7_ = mockData(_loc6_.goodVo.gfxId);
                                       if(_loc11_ || Boolean(_loc3_))
                                       {
                                          if(_loc6_.stockCurrent <= 0)
                                          {
                                             if(_loc11_ || Boolean(_loc2_))
                                             {
                                                addr0295:
                                                _loc7_.available = false;
                                                if(!(_loc10_ && Boolean(this)))
                                                {
                                                   _loc5_ = false;
                                                   if(_loc11_)
                                                   {
                                                      addr02b2:
                                                      _loc7_.stockAmount = _loc6_.stockCurrent;
                                                      if(!_loc10_)
                                                      {
                                                         addr02c2:
                                                         _loc7_.maxAmount = _loc6_.stockMax;
                                                         if(_loc10_ && Boolean(_loc3_))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                }
                                                _loc7_.requiredAmount = _loc6_.consumeAmount;
                                                if(!_loc10_)
                                                {
                                                   _loc2_.residentialNeedVoList.addItem(_loc7_);
                                                }
                                                continue;
                                             }
                                             §§goto(addr02c2);
                                          }
                                          §§goto(addr02b2);
                                       }
                                       §§goto(addr0295);
                                    }
                                    if(!_loc10_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc10_)
                                          {
                                             _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                                             if(_loc11_)
                                             {
                                                addr0343:
                                                _loc2_.modifierValueVo = new ModifierValueVo(getEnergyValue(param1),getMoodValue(param1));
                                             }
                                             §§goto(addr035e);
                                          }
                                          §§goto(addr0343);
                                       }
                                       else
                                       {
                                          _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.commercials_fillup");
                                          if(!_loc10_)
                                          {
                                             §§goto(addr0343);
                                          }
                                       }
                                       addr035e:
                                       return _loc2_;
                                    }
                                    §§goto(addr0343);
                                 }
                                 §§goto(addr0227);
                              }
                           }
                        }
                        §§goto(addr0215);
                     }
                     §§goto(addr01f8);
                  }
                  addr0227:
                  return _loc2_;
               }
               §§goto(addr00d5);
            }
            addr015e:
            return _loc2_;
         }
         §§goto(addr007c);
      }
      
      private function fillUpProductionVo(param1:ProductionFieldObjectVo) : FieldInfoLayerProductionVo
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:TimerBarComponentVo = null;
         var _loc2_:FieldInfoLayerProductionVo = new FieldInfoLayerProductionVo();
         var _loc3_:ProductionDetailViewVo = this._mainLayerProxy.getProductionDetailViewVo(param1);
         var _loc4_:Boolean = param1.isConnectedToStreet;
         §§push(_loc4_);
         if(!(_loc11_ && Boolean(_loc2_)))
         {
            if(!§§pop())
            {
               if(!(_loc11_ && Boolean(param1)))
               {
                  _loc2_.icon_dynaLibName = LIB_PATH;
                  if(!_loc11_)
                  {
                     _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                     if(_loc12_)
                     {
                        _loc2_.preHeaderText = "";
                        if(_loc12_)
                        {
                           §§goto(addr0089);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr0182);
                  }
                  §§goto(addr00a3);
               }
               addr0089:
               _loc2_.headerText = getBuildingName(param1);
               if(_loc12_ || Boolean(this))
               {
                  addr00a3:
                  _loc2_.hideSumComponent = true;
                  if(!_loc11_)
                  {
                     addr00ae:
                     _loc2_.enableProgressSumBar = false;
                     if(_loc12_ || Boolean(_loc3_))
                     {
                        _loc2_.layerMode = INFOLAYER_HARVEST_WAIT;
                        if(_loc12_)
                        {
                           §§goto(addr00ce);
                        }
                     }
                     else
                     {
                        addr0182:
                        addr018d:
                        §§push(param1.isInBuildMode);
                        if(_loc12_)
                        {
                           addr018c:
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              addr019f:
                              var _loc10_:uint;
                              _loc2_.layerMode = _loc10_ = INFOLAYER_UPDATE_READY;
                              if(_loc12_ || Boolean(_loc3_))
                              {
                                 §§push(_loc10_);
                                 if(!(_loc11_ && Boolean(_loc3_)))
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop());
                                       if(_loc12_ || Boolean(param1))
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc12_ || Boolean(param1))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0207:
                                          _loc5_ = §§pop();
                                          addr0206:
                                       }
                                       addr0209:
                                       §§push(getPhaseOutputGoods(param1,ServerPhaseTypes.PRODUCTION));
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop());
                                       }
                                       var _loc6_:* = §§pop();
                                       if(_loc12_ || Boolean(this))
                                       {
                                          §§push(this._globalBalanceProxy.energyOutputModifier);
                                          if(!_loc11_)
                                          {
                                             if(§§pop() >= 1)
                                             {
                                                if(!(_loc11_ && Boolean(_loc3_)))
                                                {
                                                   §§push(Math.ceil(_loc6_ * this._globalBalanceProxy.energyOutputModifier - _loc6_));
                                                   if(_loc12_ || Boolean(_loc3_))
                                                   {
                                                      addr0273:
                                                      _loc7_ = §§pop();
                                                      if(_loc12_)
                                                      {
                                                         addr029b:
                                                         §§push(_loc5_);
                                                         if(!(_loc11_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(INFOLAYER_HARVEST_READY);
                                                            if(!_loc11_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     _loc2_.icon_dynaLibName = LIB_PATH;
                                                                     if(_loc12_)
                                                                     {
                                                                        _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                                                                        if(!(_loc11_ && Boolean(this)))
                                                                        {
                                                                           _loc2_.preHeaderText = "";
                                                                           if(_loc12_ || Boolean(_loc3_))
                                                                           {
                                                                              §§push(param1.upgradeReady);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    var _temp_19:* = §§pop();
                                                                                    §§push(_temp_19);
                                                                                    if(_temp_19)
                                                                                    {
                                                                                       if(!(_loc11_ && Boolean(param1)))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr0332:
                                                                                             §§push(param1.isInBuildMode);
                                                                                             if(!(_loc11_ && Boolean(param1)))
                                                                                             {
                                                                                                addr0331:
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   addr033c:
                                                                                                   _loc2_.icon_dynaBmpSourceName = ICON_BIG_UPGRADE;
                                                                                                   if(!(_loc11_ && Boolean(param1)))
                                                                                                   {
                                                                                                      addr0351:
                                                                                                      _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.production_upgrade_state");
                                                                                                      if(_loc12_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         addr0391:
                                                                                                         §§push(_loc3_.currentProductionIndex);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§push(-1);
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               if(§§pop() != §§pop())
                                                                                                               {
                                                                                                                  if(_loc12_ || Boolean(this))
                                                                                                                  {
                                                                                                                     _loc2_.imageTextValueVoArrayList = getProductionIconValueList(_loc3_);
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        addr03c7:
                                                                                                                        _loc2_.headerText = getBuildingName(param1);
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr0446:
                                                                                                                           _loc2_.headerText = getBuildingName(param1);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              addr0458:
                                                                                                                              addr045e:
                                                                                                                              addr045c:
                                                                                                                              if(_loc3_.currentProductionIndex != -1)
                                                                                                                              {
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    _loc2_.imageTextValueVoArrayList = getProductionIconValueList(_loc3_);
                                                                                                                                    if(!(_loc11_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       addr0482:
                                                                                                                                       §§push(this.getPhaseInfo(param1,ServerPhaseTypes.PRODUCTION));
                                                                                                                                       if(_loc12_)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             _loc2_.harvestProgressVo = _loc8_;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr050c:
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.currentProductionIndex == -1);
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   var _temp_26:* = §§pop();
                                                                                                                                                   §§push(_temp_26);
                                                                                                                                                   §§push(_temp_26);
                                                                                                                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_ || Boolean(_loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr054c:
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.isIdle);
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     addr056c:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc12_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_.imageTextValueVoArrayList = getProductionIconValueList(_loc3_);
                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0590:
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(!(_loc11_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(!(_loc11_ && Boolean(this)))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc12_ || Boolean(this))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc2_.hideSumComponent = true;
                                                                                                                                                                                          if(!_loc11_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr05cd:
                                                                                                                                                                                             addr05d4:
                                                                                                                                                                                             addr05d2:
                                                                                                                                                                                             if(_loc8_.cycleLength > 0)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc2_.enableProgressSumBar = true;
                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc2_.harvestProgressVo = _loc8_;
                                                                                                                                                                                                      if(_loc11_ && Boolean(_loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr067a:
                                                                                                                                                                                                         §§push(_loc2_.moveInMode);
                                                                                                                                                                                                         if(!_loc11_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc12_ || Boolean(_loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.prod_commercial_movin");
                                                                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr06ab:
                                                                                                                                                                                                                     §§push(_loc2_.moveInMode);
                                                                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr06b5:
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr06c4:
                                                                                                                                                                                                                           var _temp_37:* = §§pop();
                                                                                                                                                                                                                           §§push(_temp_37);
                                                                                                                                                                                                                           §§push(_temp_37);
                                                                                                                                                                                                                           if(_loc12_ || Boolean(this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr06d3:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc12_ || Boolean(_loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr06e5:
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    if(_loc12_ || Boolean(_loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr06f4:
                                                                                                                                                                                                                                       §§push(_loc2_.constructionMode);
                                                                                                                                                                                                                                       if(_loc12_ || Boolean(_loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0706:
                                                                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                                                                          if(!_loc11_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr070d:
                                                                                                                                                                                                                                             var _temp_42:* = §§pop();
                                                                                                                                                                                                                                             addr070e:
                                                                                                                                                                                                                                             §§push(_temp_42);
                                                                                                                                                                                                                                             if(_temp_42)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc12_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0718:
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   if(!(_loc11_ && Boolean(param1)))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr0732:
                                                                                                                                                                                                                                                      addr0727:
                                                                                                                                                                                                                                                      §§push(param1.isIdle);
                                                                                                                                                                                                                                                      if(_loc12_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc12_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr073c:
                                                                                                                                                                                                                                                            _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.production_trigger");
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr074c:
                                                                                                                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                      §§push(ICON_PRODUCT);
                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                      if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + _loc7_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().sumVo = §§pop().buildImageTextValueVO(§§pop(),§§pop(),true);
                                                                                                                                                                                                                                                      if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr077a:
                                                                                                                                                                                                                                                         _loc2_.sumVo.nameText = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.total");
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr078d:
                                                                                                                                                                                                                                                      var _loc9_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
                                                                                                                                                                                                                                                      §§push(Boolean(_loc9_));
                                                                                                                                                                                                                                                      if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         var _temp_48:* = §§pop();
                                                                                                                                                                                                                                                         §§push(_temp_48);
                                                                                                                                                                                                                                                         if(_temp_48)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc11_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr07f2:
                                                                                                                                                                                                                                                                  §§push(_loc9_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY));
                                                                                                                                                                                                                                                                  if(_loc12_ || Boolean(param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc11_ && Boolean(this)))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc2_.icon_dynaLibName = LIB_PATH;
                                                                                                                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0811:
                                                                                                                                                                                                                                                                           _loc2_.icon_dynaBmpSourceName = ICON_BONUSDAY;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr0818);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr0811);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr0818:
                                                                                                                                                                                                                                                               return _loc2_;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr07f2);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr073c);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0732);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr073c);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0706);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr070d);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr070e);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr070d);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0732);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr073c);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr06ab);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr06e5);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr074c);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc2_.icon_dynaBmpSourceName = ICON_BIG_ALERT;
                                                                                                                                                                                                if(_loc12_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc2_.enableProgressSumBar = false;
                                                                                                                                                                                                   if(!(_loc11_ && Boolean(param1)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc2_.constructionMode = this.checkConstructionPhase(param1);
                                                                                                                                                                                                      if(!_loc11_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0631:
                                                                                                                                                                                                         _loc2_.moveInMode = this.checkMoveInPhase(param1);
                                                                                                                                                                                                         if(_loc12_ || Boolean(param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0649:
                                                                                                                                                                                                            §§push(_loc2_.constructionMode);
                                                                                                                                                                                                            if(!_loc11_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.build_info");
                                                                                                                                                                                                                     if(!(_loc11_ && Boolean(param1)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr067a);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0727);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr06ab);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr067a);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0718);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr06ab);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0649);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr073c);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0649);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr074c);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr05cd);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr05d4);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr05d2);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr074c);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0649);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0590);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr06b5);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0706);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0631);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr06c4);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr056c);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr06d3);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr054c);
                                                                                                                                          }
                                                                                                                                          §§goto(addr06f4);
                                                                                                                                       }
                                                                                                                                       §§goto(addr074c);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr04cd:
                                                                                                                                       _loc2_.icon_dynaBmpSourceName = ICON_BIG_INFO;
                                                                                                                                       if(_loc12_)
                                                                                                                                       {
                                                                                                                                          _loc2_.preHeaderText = "";
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             _loc2_.headerText = getBuildingName(param1);
                                                                                                                                             if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                addr0500:
                                                                                                                                                §§goto(addr050c);
                                                                                                                                                §§push(this.getPhaseInfo(param1,ServerPhaseTypes.PRODUCTION));
                                                                                                                                             }
                                                                                                                                             §§goto(addr078d);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0500);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr078d);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0482);
                                                                                                                        }
                                                                                                                        §§goto(addr074c);
                                                                                                                     }
                                                                                                                     §§goto(addr0500);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0423:
                                                                                                                     _loc2_.icon_dynaBmpSourceName = ICON_BIG_UPGRADE;
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.production_upgrade_state");
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           §§goto(addr0446);
                                                                                                                        }
                                                                                                                        §§goto(addr078d);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0458);
                                                                                                               }
                                                                                                               §§goto(addr03c7);
                                                                                                            }
                                                                                                            §§goto(addr045e);
                                                                                                         }
                                                                                                         §§goto(addr045c);
                                                                                                      }
                                                                                                      §§goto(addr0423);
                                                                                                   }
                                                                                                   §§goto(addr0482);
                                                                                                }
                                                                                                §§goto(addr0391);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc2_.preHeaderText = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.production_collect");
                                                                                                if(_loc12_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr0391);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr04cd);
                                                                                          }
                                                                                          §§goto(addr0351);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0332);
                                                                                 }
                                                                                 §§goto(addr0331);
                                                                              }
                                                                              §§goto(addr0332);
                                                                           }
                                                                           §§goto(addr04cd);
                                                                        }
                                                                        §§goto(addr078d);
                                                                     }
                                                                     §§goto(addr0391);
                                                                  }
                                                                  §§goto(addr0446);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc12_ || Boolean(param1))
                                                                  {
                                                                     addr03fb:
                                                                     §§push(INFOLAYER_UPDATE_READY);
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc2_.icon_dynaLibName = LIB_PATH;
                                                                              if(_loc12_ || Boolean(_loc3_))
                                                                              {
                                                                                 §§goto(addr0423);
                                                                              }
                                                                              §§goto(addr0458);
                                                                           }
                                                                           §§goto(addr077a);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr04ae:
                                                                           addr04ab:
                                                                           if(_loc5_ == INFOLAYER_HARVEST_WAIT)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr04b8:
                                                                                 _loc2_.icon_dynaLibName = LIB_PATH;
                                                                                 if(!(_loc11_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§goto(addr04cd);
                                                                                 }
                                                                              }
                                                                              §§goto(addr077a);
                                                                           }
                                                                        }
                                                                        §§goto(addr074c);
                                                                     }
                                                                     §§goto(addr04ae);
                                                                  }
                                                                  §§goto(addr04ab);
                                                               }
                                                            }
                                                            §§goto(addr04ae);
                                                         }
                                                         §§goto(addr03fb);
                                                      }
                                                      §§goto(addr0391);
                                                   }
                                                   else
                                                   {
                                                      addr0293:
                                                      _loc7_ = §§pop();
                                                      if(_loc12_)
                                                      {
                                                         §§goto(addr029b);
                                                      }
                                                   }
                                                }
                                                §§goto(addr04b8);
                                             }
                                             else
                                             {
                                                §§push(Math.floor(_loc6_ * this._globalBalanceProxy.energyOutputModifier - _loc6_));
                                             }
                                             §§goto(addr0293);
                                          }
                                          §§goto(addr0273);
                                       }
                                       §§goto(addr033c);
                                    }
                                    §§goto(addr0206);
                                 }
                                 else
                                 {
                                    addr01fe:
                                    if(!_loc11_)
                                    {
                                       §§goto(addr0206);
                                    }
                                 }
                                 §§goto(addr0207);
                              }
                              else
                              {
                                 addr01fc:
                                 §§push(_loc10_);
                              }
                              §§goto(addr01fe);
                           }
                           §§goto(addr0209);
                        }
                        else
                        {
                           _loc2_.layerMode = _loc10_ = INFOLAYER_HARVEST_WAIT;
                        }
                        §§goto(addr01fc);
                     }
                  }
                  else
                  {
                     addr00ee:
                     _loc2_.moveInMode = this.checkMoveInPhase(param1);
                     if(!(_loc11_ && Boolean(param1)))
                     {
                        addr0106:
                        if(param1.isHarvestReady)
                        {
                           if(!_loc11_)
                           {
                              _loc2_.layerMode = _loc10_ = INFOLAYER_HARVEST_READY;
                              if(!_loc11_)
                              {
                                 §§push(_loc10_);
                                 if(!_loc11_)
                                 {
                                    if(_loc12_)
                                    {
                                       §§push(§§pop());
                                       if(_loc12_ || Boolean(_loc2_))
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc12_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0207);
                                       }
                                       §§goto(addr0209);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr01fe);
                                 }
                                 §§goto(addr0207);
                              }
                              else
                              {
                                 §§goto(addr01fc);
                              }
                           }
                           else
                           {
                              §§goto(addr019f);
                           }
                           §§goto(addr01fc);
                        }
                        else
                        {
                           §§push(param1.upgradeReady);
                           if(!(_loc11_ && Boolean(_loc3_)))
                           {
                              addr0161:
                              §§push(§§pop());
                              if(_loc12_ || Boolean(_loc2_))
                              {
                                 var _temp_66:* = §§pop();
                                 §§push(_temp_66);
                                 if(_temp_66)
                                 {
                                    if(_loc12_)
                                    {
                                       addr017b:
                                       §§pop();
                                       if(!_loc11_)
                                       {
                                          §§goto(addr0182);
                                       }
                                       §§goto(addr0209);
                                    }
                                    §§goto(addr018c);
                                 }
                              }
                              §§goto(addr018d);
                           }
                           §§goto(addr017b);
                        }
                     }
                  }
                  §§goto(addr0209);
               }
               addr00ce:
               return _loc2_;
            }
            _loc2_.constructionMode = this.checkConstructionPhase(param1);
            if(_loc12_)
            {
               §§goto(addr00ee);
            }
            §§goto(addr0106);
         }
         §§goto(addr0161);
      }
      
      private function fillUpResidentialVo(param1:ResidentialFieldObjectVo) : FieldInfoLayerResidentialVo
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 950
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function getDepartmentProfessionals(param1:InfrastructureBuildingFieldObjectVo) : Vector.<DepartmentProfessionalComponentVo>
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc4_:Object = null;
         var _loc5_:ConfigProfessionalSpecializationDTO = null;
         var _loc6_:ProfessionalDTO = null;
         var _loc2_:Vector.<DepartmentProfessionalComponentVo> = new Vector.<DepartmentProfessionalComponentVo>();
         var _loc3_:Vector.<ConfigProfessionalSpecializationDTO> = this._professionalProxy.getProfessionalSlotsForDepartment(param1.department[0]);
         for each(_loc5_ in _loc3_)
         {
            _loc4_ = new Object();
            _loc4_.lib = "icon_badges";
            if(!_loc12_)
            {
               _loc4_.swf = "gui_ui_emergencyDepartmentsIcons";
               if(!(_loc12_ && Boolean(_loc2_)))
               {
                  _loc4_.bmp = _loc5_.gfxId;
               }
            }
            for each(_loc6_ in this._professionalProxy.getProfessionalsByDepartment(param1.department[0]))
            {
               if(_loc6_.configSpecializationId == _loc5_.id)
               {
                  if(!_loc12_)
                  {
                     _loc4_.occ = true;
                  }
                  break;
               }
            }
            if(_loc11_)
            {
               _loc2_.push(new DepartmentProfessionalComponentVo(_loc4_));
            }
         }
         return _loc2_;
      }
      
      private function buildImageTextValueVO(param1:String, param2:Number, param3:Boolean = false) : ImageTextValueVO
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:ImageTextValueVO = new ImageTextValueVO();
         if(!_loc8_)
         {
            if(param3)
            {
               addr002e:
               §§push(13);
               if(_loc7_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(_loc8_ && Boolean(this))
                  {
                  }
                  addr005a:
                  §§push(§§pop());
               }
               else
               {
                  addr0053:
                  §§push(§§pop());
                  if(_loc7_)
                  {
                     §§goto(addr005a);
                  }
               }
               var _loc5_:* = §§pop();
               if(!_loc8_)
               {
                  if(param3)
                  {
                     addr0068:
                     §§push(this._colorOutComeText);
                     if(_loc7_ || param3)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           addr00af:
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        addr00a0:
                        §§push(§§pop());
                        if(_loc7_ || param3)
                        {
                           §§goto(addr00af);
                        }
                     }
                  }
                  else
                  {
                     §§push(this._colorText);
                     if(_loc7_ || param3)
                     {
                        §§goto(addr00a0);
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc7_ || Boolean(this))
                  {
                     _loc4_.visualLibName = LIB_ICON_PATH;
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        _loc4_.visualName = param1;
                        if(_loc7_ || param3)
                        {
                           addr00ea:
                           _loc4_.nameText = this._locaTextDict[param1];
                           if(!(_loc8_ && Boolean(param2)))
                           {
                              _loc4_.nameFontSize = 11;
                              if(!_loc8_)
                              {
                                 addr0112:
                                 _loc4_.nameColor = _loc6_;
                                 if(!_loc8_)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       if(param2 >= 0)
                                       {
                                          addr0136:
                                          §§push(this._colorGreen);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop());
                                             if(_loc7_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(this._colorRed);
                                          if(!(_loc8_ && param3))
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       §§pop().valueColor = §§pop();
                                       if(!_loc8_)
                                       {
                                          addr0168:
                                          _loc4_.valueFontSize = _loc5_;
                                          if(_loc7_ || Boolean(param2))
                                          {
                                             §§push(param1);
                                             if(!(_loc8_ && Boolean(param1)))
                                             {
                                                §§push(ICON_COIN);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc7_)
                                                   {
                                                      var _temp_15:* = §§pop();
                                                      §§push(_temp_15);
                                                      §§push(_temp_15);
                                                      if(!_loc8_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_ || Boolean(param2))
                                                            {
                                                               §§pop();
                                                               if(_loc7_)
                                                               {
                                                                  §§push(param3);
                                                                  if(_loc7_ || Boolean(this))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!(_loc8_ && Boolean(this)))
                                                                     {
                                                                        addr01da:
                                                                        var _temp_19:* = §§pop();
                                                                        §§push(_temp_19);
                                                                        §§push(_temp_19);
                                                                        if(!(_loc8_ && Boolean(param1)))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr0206:
                                                                                    §§push(param1);
                                                                                    if(!(_loc8_ && param3))
                                                                                    {
                                                                                       §§push(ICON_PRODUCT);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr021e:
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(_loc7_ || Boolean(this))
                                                                                          {
                                                                                             var _temp_23:* = §§pop();
                                                                                             §§push(_temp_23);
                                                                                             §§push(_temp_23);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr0234:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc8_ && param3))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc8_ && Boolean(param1)))
                                                                                                      {
                                                                                                         §§push(param3);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            addr025c:
                                                                                                            §§push(!§§pop());
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§goto(addr0263);
                                                                                                            }
                                                                                                            §§goto(addr0305);
                                                                                                         }
                                                                                                         §§goto(addr0338);
                                                                                                      }
                                                                                                      §§goto(addr0325);
                                                                                                   }
                                                                                                   §§goto(addr0343);
                                                                                                }
                                                                                                addr0263:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      _loc4_.valueColor = this._colorText;
                                                                                                      if(!(_loc8_ && param3))
                                                                                                      {
                                                                                                         _loc4_.valueTextLabel = LocaUtils.getThousendSeperatedNumber(Math.abs(param2));
                                                                                                         if(!(_loc7_ || param3))
                                                                                                         {
                                                                                                            addr036c:
                                                                                                            _loc4_.valueTextLabel = LocaUtils.getThousendSeperatedNumber(Math.abs(param2));
                                                                                                            if(_loc7_ || Boolean(this))
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0403);
                                                                                                      }
                                                                                                      §§goto(addr036c);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   if(_loc7_ || Boolean(this))
                                                                                                   {
                                                                                                      addr02b7:
                                                                                                      §§push(ICON_COIN);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr02c0:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            var _temp_30:* = §§pop();
                                                                                                            §§push(_temp_30);
                                                                                                            §§push(_temp_30);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr02ce:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc8_ && param3))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push(param3);
                                                                                                                        if(!(_loc8_ && param3))
                                                                                                                        {
                                                                                                                           addr02f6:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc7_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr0305:
                                                                                                                              var _temp_34:* = §§pop();
                                                                                                                              §§push(_temp_34);
                                                                                                                              §§push(_temp_34);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 addr030c:
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       addr0316:
                                                                                                                                       §§pop();
                                                                                                                                       if(!(_loc8_ && Boolean(param2)))
                                                                                                                                       {
                                                                                                                                          addr0329:
                                                                                                                                          addr0326:
                                                                                                                                          addr0325:
                                                                                                                                          §§push(param1 == ICON_PRODUCT);
                                                                                                                                          if(!(_loc8_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr0338:
                                                                                                                                             var _temp_37:* = §§pop();
                                                                                                                                             addr0339:
                                                                                                                                             §§push(_temp_37);
                                                                                                                                             if(_temp_37)
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0343);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr035a);
                                                                                                                                          }
                                                                                                                                          addr0343:
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc7_ || Boolean(param2))
                                                                                                                                          {
                                                                                                                                             addr035a:
                                                                                                                                             addr0352:
                                                                                                                                             §§push(param3);
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                addr0359:
                                                                                                                                                §§push(§§pop());
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr036c);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(param2 >= 0)
                                                                                                                                                   {
                                                                                                                                                      addr039f:
                                                                                                                                                      §§push("+ ");
                                                                                                                                                      if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + param2);
                                                                                                                                                         if(_loc7_ || Boolean(param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc8_ && Boolean(param1))
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr03f1:
                                                                                                                                                            addr03ff:
                                                                                                                                                            §§push(§§pop() + LocaUtils.getThousendSeperatedNumber(Math.abs(param2)));
                                                                                                                                                         }
                                                                                                                                                         §§pop().valueTextLabel = §§pop();
                                                                                                                                                         §§goto(addr0403);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03f1);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push("- ");
                                                                                                                                                      if(!(_loc8_ && Boolean(param2)))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr03f1);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03ff);
                                                                                                                                                }
                                                                                                                                                §§goto(addr039f);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0403);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0338);
                                                                                                                                 }
                                                                                                                                 §§goto(addr035a);
                                                                                                                              }
                                                                                                                              §§goto(addr0339);
                                                                                                                           }
                                                                                                                           §§goto(addr0343);
                                                                                                                        }
                                                                                                                        §§goto(addr035a);
                                                                                                                     }
                                                                                                                     §§goto(addr0403);
                                                                                                                  }
                                                                                                                  §§goto(addr0359);
                                                                                                               }
                                                                                                               §§goto(addr0305);
                                                                                                            }
                                                                                                            §§goto(addr030c);
                                                                                                         }
                                                                                                         §§goto(addr0359);
                                                                                                      }
                                                                                                      §§goto(addr0329);
                                                                                                   }
                                                                                                   §§goto(addr0326);
                                                                                                }
                                                                                                §§goto(addr0403);
                                                                                             }
                                                                                             §§goto(addr02ce);
                                                                                          }
                                                                                          §§goto(addr0338);
                                                                                       }
                                                                                       §§goto(addr02c0);
                                                                                    }
                                                                                    §§goto(addr0326);
                                                                                 }
                                                                                 §§goto(addr0403);
                                                                              }
                                                                              §§goto(addr0316);
                                                                           }
                                                                           §§goto(addr0263);
                                                                        }
                                                                        §§goto(addr0234);
                                                                     }
                                                                     §§goto(addr02f6);
                                                                  }
                                                                  §§goto(addr025c);
                                                               }
                                                               §§goto(addr0325);
                                                            }
                                                            §§goto(addr025c);
                                                         }
                                                         §§goto(addr01da);
                                                      }
                                                      §§goto(addr02ce);
                                                   }
                                                   §§goto(addr0359);
                                                }
                                                §§goto(addr021e);
                                             }
                                             §§goto(addr02b7);
                                          }
                                       }
                                       addr0403:
                                       return _loc4_;
                                    }
                                    §§goto(addr0136);
                                 }
                                 §§goto(addr0206);
                              }
                              §§goto(addr0168);
                           }
                           §§goto(addr0112);
                        }
                        §§goto(addr0352);
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr0168);
               }
               §§goto(addr0068);
            }
            else
            {
               §§push(11);
            }
            §§goto(addr0053);
         }
         §§goto(addr002e);
      }
      
      private function getResidentialSumVO() : ImageTextValueVO
      {
         var _loc1_:Number = NaN;
         return this.buildImageTextValueVO(ICON_COIN,_loc1_,true);
      }
      
      private function checkConstructionPhase(param1:BillboardObjectVo) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PhaseDTO = null;
         if(!_loc5_)
         {
            §§push(param1 is CitySquareFieldObjectVo);
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§pop();
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§push(param1 is CinemaFieldObjectVo);
                        if(_loc6_ || Boolean(param1))
                        {
                           addr0068:
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr0073:
                                 return false;
                                 addr0072:
                              }
                           }
                           §§goto(addr0074);
                        }
                        §§goto(addr0073);
                     }
                     addr0074:
                     var _loc3_:int = 0;
                     var _loc4_:* = param1.activePhases;
                     while(true)
                     {
                        for each(_loc2_ in _loc4_)
                        {
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              §§push(_loc2_.config);
                              if(!_loc5_)
                              {
                                 §§push(§§pop().phaseType);
                                 if(_loc6_)
                                 {
                                    §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_)
                                       {
                                          var _temp_9:* = §§pop();
                                          §§push(_temp_9);
                                          §§push(_temp_9);
                                          if(_loc6_ || Boolean(_loc3_))
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop();
                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                   {
                                                      addr00ee:
                                                      §§push(_loc2_.config);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop().phaseType);
                                                         if(_loc6_)
                                                         {
                                                            addr010b:
                                                            §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc6_ || Boolean(_loc3_))
                                                               {
                                                                  addr0126:
                                                                  var _temp_13:* = §§pop();
                                                                  §§push(_temp_13);
                                                                  §§push(_temp_13);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr012d:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr013e:
                                                                              §§push(_loc2_.config);
                                                                              if(_loc6_ || Boolean(_loc3_))
                                                                              {
                                                                                 §§push(§§pop().phaseType);
                                                                                 if(!(_loc5_ && Boolean(param1)))
                                                                                 {
                                                                                    addr0160:
                                                                                    §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                                                                    if(!(_loc5_ && Boolean(this)))
                                                                                    {
                                                                                       addr0174:
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(_loc6_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr0183:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc5_ && Boolean(this)))
                                                                                             {
                                                                                                §§push(true);
                                                                                                if(!(_loc5_ && Boolean(this)))
                                                                                                {
                                                                                                   return §§pop();
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr01ab:
                                                                                                addr01b7:
                                                                                                addr01b1:
                                                                                                addr01ae:
                                                                                                §§push(_loc2_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             var _temp_20:* = §§pop();
                                                                                             addr01bf:
                                                                                             §§push(_temp_20);
                                                                                             if(_temp_20)
                                                                                             {
                                                                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr01d1:
                                                                                                   §§pop();
                                                                                                   if(_loc6_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(param1.isHarvestReady);
                                                                                                      if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         if(!(_loc6_ || Boolean(this)))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      addr020e:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   addr0218:
                                                                                                   §§push(true);
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr020e);
                                                                                          }
                                                                                          §§goto(addr01ab);
                                                                                       }
                                                                                       §§goto(addr020e);
                                                                                    }
                                                                                    §§goto(addr01b7);
                                                                                 }
                                                                                 §§goto(addr01b1);
                                                                              }
                                                                              §§goto(addr01ae);
                                                                           }
                                                                           §§goto(addr0218);
                                                                        }
                                                                     }
                                                                     §§goto(addr0183);
                                                                  }
                                                                  §§goto(addr01bf);
                                                               }
                                                               §§goto(addr01d1);
                                                            }
                                                            §§goto(addr0174);
                                                         }
                                                         §§goto(addr0160);
                                                      }
                                                      §§goto(addr01ae);
                                                   }
                                                   §§goto(addr013e);
                                                }
                                                §§goto(addr0183);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr012d);
                                       }
                                       §§goto(addr020e);
                                    }
                                    §§goto(addr01b7);
                                 }
                                 §§goto(addr010b);
                              }
                              §§goto(addr01ae);
                           }
                           §§goto(addr00ee);
                        }
                        return false;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr0068);
            }
            §§goto(addr0073);
         }
         §§goto(addr0072);
      }
      
      private function checkMoveInPhase(param1:BillboardObjectVo) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PhaseDTO = null;
         for each(_loc2_ in param1.activePhases)
         {
            if(_loc6_)
            {
               §§push(_loc2_.config);
               if(!_loc5_)
               {
                  if(§§pop().phaseType != ServerPhaseTypes.CREATE_ACTIVATE)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§push(_loc2_.config);
               }
               if(§§pop().durationConfig.duration <= 0)
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      private function getPhaseInfo(param1:BillboardObjectVo, param2:String) : TimerBarComponentVo
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:PhaseDTO = null;
         var _loc3_:TimerBarComponentVo = new TimerBarComponentVo();
         for each(_loc4_ in param1.activePhases)
         {
            §§push(_loc4_.config);
            if(_loc7_ || Boolean(param2))
            {
               §§push(§§pop().phaseType);
               if(_loc7_)
               {
                  §§push(param2);
                  if(!(_loc8_ && Boolean(this)))
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(_loc7_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc8_)
                              {
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                                 §§push(_loc4_.config);
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop().phaseType);
                                    if(_loc7_)
                                    {
                                       §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                       if(!(_loc8_ && Boolean(param2)))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc8_)
                                          {
                                             addr00c6:
                                             var _temp_8:* = §§pop();
                                             §§push(_temp_8);
                                             §§push(_temp_8);
                                             if(!_loc8_)
                                             {
                                                addr00cd:
                                                if(!§§pop())
                                                {
                                                   if(!(_loc8_ && Boolean(param1)))
                                                   {
                                                      addr00df:
                                                      §§pop();
                                                      if(!(_loc8_ && Boolean(this)))
                                                      {
                                                         §§push(_loc4_.config);
                                                         if(_loc7_)
                                                         {
                                                            addr00f8:
                                                            §§push(§§pop().phaseType);
                                                            if(!(_loc8_ && Boolean(param1)))
                                                            {
                                                               §§push(ServerPhaseTypes.UPGRADE);
                                                               if(_loc7_ || Boolean(param1))
                                                               {
                                                                  addr011d:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc8_ && Boolean(this)))
                                                                  {
                                                                     addr012c:
                                                                     var _temp_14:* = §§pop();
                                                                     §§push(_temp_14);
                                                                     §§push(_temp_14);
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!(_loc8_ && Boolean(this)))
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(_loc4_.config);
                                                                                 if(!(_loc8_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    addr016d:
                                                                                    §§push(§§pop().phaseType);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr0176:
                                                                                       §§push(ServerPhaseTypes.EDUCATION);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr0182:
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             addr0189:
                                                                                             var _temp_17:* = §§pop();
                                                                                             addr018a:
                                                                                             §§push(_temp_17);
                                                                                             if(!_temp_17)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr01a8:
                                                                                                   addr01a2:
                                                                                                   addr019f:
                                                                                                   §§push(_loc4_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr01a9:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr01b3:
                                                                                          §§push(_loc4_.expirationTime);
                                                                                          if(_loc7_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§push(this._timerProxy);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(§§pop().currentTimeStamp);
                                                                                                if(!(_loc8_ && Boolean(this)))
                                                                                                {
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      if(!(_loc7_ || Boolean(_loc3_)))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr01f3:
                                                                                                      _loc3_.waitingForStart = true;
                                                                                                      if(_loc7_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr025b:
                                                                                                      _loc3_.targetTime = _loc4_.expirationTime;
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      _loc3_.cycleLength = _loc4_.config.durationConfig.duration;
                                                                                                      if(_loc8_ && Boolean(_loc3_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0216:
                                                                                                      addr0213:
                                                                                                      addr020f:
                                                                                                      if(_loc4_.expirationTime <= this._timerProxy.currentTimeStamp)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         _loc3_.waitingForStart = false;
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(_loc3_);
                                                                                                         §§push(_loc4_.expirationTime);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() - _loc4_.config.durationConfig.duration);
                                                                                                         }
                                                                                                         §§pop().startTime = §§pop();
                                                                                                         if(_loc8_ && Boolean(this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr025b);
                                                                                                      }
                                                                                                   }
                                                                                                   _loc3_.currentTime = this._timerProxy.currentTimeStamp;
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr0216);
                                                                                             }
                                                                                             §§goto(addr0213);
                                                                                          }
                                                                                          §§goto(addr020f);
                                                                                       }
                                                                                       §§goto(addr01a8);
                                                                                    }
                                                                                    §§goto(addr01a2);
                                                                                 }
                                                                                 §§goto(addr019f);
                                                                              }
                                                                              §§goto(addr01f3);
                                                                           }
                                                                           §§goto(addr01a9);
                                                                        }
                                                                        §§goto(addr0189);
                                                                     }
                                                                     §§goto(addr018a);
                                                                  }
                                                                  §§goto(addr01a9);
                                                               }
                                                               §§goto(addr0182);
                                                            }
                                                            §§goto(addr0176);
                                                         }
                                                         §§goto(addr019f);
                                                      }
                                                      §§goto(addr01b3);
                                                   }
                                                }
                                                §§goto(addr012c);
                                             }
                                             §§goto(addr018a);
                                          }
                                          §§goto(addr00df);
                                       }
                                       §§goto(addr011d);
                                    }
                                    §§goto(addr0176);
                                 }
                                 §§goto(addr016d);
                              }
                              §§goto(addr01a9);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr01a9);
                  }
                  §§goto(addr01a8);
               }
               §§goto(addr01a2);
            }
            §§goto(addr00f8);
         }
         return _loc3_;
      }
      
      public function getVoForConstruction(param1:BillboardObject) : FieldInfoLayerConstructionVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(this.checkConstructionPhase(param1.billboardObjectVo))
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§goto(addr0047);
               }
            }
            return null;
         }
         addr0047:
         return new FieldInfoLayerConstructionVo();
      }
      
      public function isoToStage(param1:Number, param2:Number) : Point
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:Point = null;
         §§push(IsoMath);
         §§push(§§findproperty(Pt));
         §§push(param1);
         if(!(_loc6_ && Boolean(param2)))
         {
            §§push(§§pop() + 1);
         }
         §§push(param2);
         if(_loc5_ || Boolean(param2))
         {
            §§push(§§pop() + 1);
         }
         var _loc3_:Pt = §§pop().isoToScreen(new §§pop().Pt(§§pop(),§§pop(),this.isoView.currentZoom));
         _loc4_ = this.isoView.localToGlobal(new Point(_loc3_.x,_loc3_.y));
         _loc4_.x = Math.round(_loc3_.x);
         if(_loc5_)
         {
            _loc4_.y = Math.round(_loc3_.y);
         }
         return _loc4_;
      }
      
      public function get isoView() : IsoView
      {
         return this._isoView;
      }
      
      public function set isoView(param1:IsoView) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._isoView = param1;
         }
      }
      
      private function get heatmapMediator() : SecurityGradeHeatMapMediator
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._hmMed);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     this._hmMed = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
                  }
               }
               addr0054:
               return this._hmMed;
            }
         }
         §§goto(addr0054);
      }
   }
}

