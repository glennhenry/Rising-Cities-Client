package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerEnergyMoodComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerProductionComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerResidentialComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerShopComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.PlayfieldItemUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SpecificPlayfieldItemUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class PlayfieldItemUiInfolayerContent extends AbstractUIInfolayerComponent implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         _skinParts = {
            "backgroundGroup":true,
            "topInformation":true,
            "header":true,
            "headerIcon":true,
            "contentGroup":false
         };
      }
      
      public var _PlayfieldItemUiInfolayerContent_Group2:Group;
      
      public var _PlayfieldItemUiInfolayerContent_Group3:Group;
      
      public var _PlayfieldItemUiInfolayerContent_Group4:Group;
      
      public var _PlayfieldItemUiInfolayerContent_LocaLabel4:LocaLabel;
      
      private var _282001022contentVGroup:VGroup;
      
      private var _284027091firebadge:BriskImageDynaLib;
      
      private var _1454149207hospitalbadge:BriskImageDynaLib;
      
      private var _96419224masteryGroup:VGroup;
      
      private var _350687281masteryProgressBar:SlimProgressBarComponent;
      
      private var _85291001masteryStar0:BriskImageDynaLib;
      
      private var _85291000masteryStar1:BriskImageDynaLib;
      
      private var _85290999masteryStar2:BriskImageDynaLib;
      
      private var _85290998masteryStar3:BriskImageDynaLib;
      
      private var _85290997masteryStar4:BriskImageDynaLib;
      
      private var _1694421686masteryStarGroup:HGroup;
      
      private var _845656926moodEnergyComponent:InfoLayerEnergyMoodComponent;
      
      private var _407317255permissionAmount:LocaLabel;
      
      private var _1643738640permissionGroup:VGroup;
      
      private var _1438451992permissionIcon:BriskImageDynaLib;
      
      private var _1639640475permissionLabel:LocaLabel;
      
      private var _1595242821policebadge:BriskImageDynaLib;
      
      private var _366670780productionComponent:InfoLayerProductionComponent;
      
      private var _607607385residentialComponent:InfoLayerResidentialComponent;
      
      private var _726395105securityGroup:VGroup;
      
      private var _665626969shopComponent:InfoLayerShopComponent;
      
      private var _1286778554specialGroup:VGroup;
      
      private var _1615133998specialtextLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:PlayfieldItemUiInfolayerContentVo;
      
      private var _masteryStars:Vector.<BriskImageDynaLib>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PlayfieldItemUiInfolayerContent()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc3_ && _loc2_))
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr003f:
                     §§pop().§§slot[5] = null;
                     if(_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || Boolean(this))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr0088:
                                    super();
                                    if(_loc4_ || _loc1_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§pop().§§slot[1] = this._PlayfieldItemUiInfolayerContent_bindingsSetup();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr00d1:
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   addr00d8:
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         addr00f3:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc3_)
                                                         {
                                                            addr00fd:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr010a:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     addr0119:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_PlayfieldItemUiInfolayerContentWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0139:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0141:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              addr015f:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return PlayfieldItemUiInfolayerContent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 addr0185:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr01ac:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01d2:
                                                                                       this.maxWidth = 230;
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          this.width = 230;
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr01fa:
                                                                                             this.minWidth = 230;
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr0206:
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PlayfieldItemUiInfolayerContent_Array1_c);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr021d:
                                                                                                   i = 0;
                                                                                                   addr021b:
                                                                                                }
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  var _temp_19:* = §§pop();
                                                                                                                  §§pop().§§slot[4] = _temp_19;
                                                                                                                  if(!(_loc3_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                                addr0281:
                                                                                             }
                                                                                             §§goto(addr021b);
                                                                                          }
                                                                                          §§goto(addr0281);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0206);
                                                                                 }
                                                                                 §§goto(addr01fa);
                                                                              }
                                                                              §§goto(addr0206);
                                                                           }
                                                                           §§goto(addr01d2);
                                                                        }
                                                                        §§goto(addr021d);
                                                                     }
                                                                     §§goto(addr0185);
                                                                  }
                                                                  §§goto(addr0141);
                                                               }
                                                               §§goto(addr01fa);
                                                            }
                                                         }
                                                         §§goto(addr015f);
                                                      }
                                                      §§goto(addr0119);
                                                   }
                                                   §§goto(addr01ac);
                                                }
                                                §§goto(addr00f3);
                                             }
                                             §§goto(addr00fd);
                                          }
                                          §§goto(addr00d8);
                                       }
                                       §§goto(addr010a);
                                    }
                                    §§goto(addr0281);
                                 }
                                 §§goto(addr00fd);
                              }
                              §§goto(addr0139);
                           }
                           §§goto(addr01ac);
                        }
                        §§goto(addr015f);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr0119);
               }
               §§goto(addr0088);
            }
            §§goto(addr003f);
         }
         §§goto(addr00d8);
      }
      
      private static function getColorFromAmount(param1:Number) : uint
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(0);
               if(_loc3_ || Boolean(param1))
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc2_)
                     {
                        addr004a:
                        §§push(14300688);
                        if(_loc3_ || _loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0077:
                        §§push(8237580);
                        if(!(_loc3_ || _loc2_))
                        {
                           §§goto(addr0089);
                        }
                     }
                     return §§pop();
                  }
                  addr006e:
                  addr006c:
                  if(param1 > 0)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0077);
                     }
                     else
                     {
                        addr0087:
                        §§push(7303023);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0087);
                  addr0089:
                  return §§pop();
               }
               §§goto(addr006e);
            }
            §§goto(addr006c);
         }
         §§goto(addr004a);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            PlayfieldItemUiInfolayerContent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0048:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr004e);
            }
            §§goto(addr0048);
         }
         addr004e:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!(param1 is PlayfieldItemUiInfolayerContentVo))
            {
               throw new ArgumentError("Wrong Vo for this component use PlayfieldItemUiInfolayerContentVo " + this);
            }
            if(_loc3_ || _loc3_)
            {
               §§goto(addr003b);
            }
            §§goto(addr0049);
         }
         addr003b:
         this._implementationData = param1 as PlayfieldItemUiInfolayerContentVo;
         if(_loc3_)
         {
            addr0049:
            super.data = param1;
            if(_loc3_)
            {
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this._implementationData));
            if(_loc2_ || _loc1_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(_loc2_ || _loc3_)
                     {
                        addr004e:
                        if(_dirty)
                        {
                           if(_loc2_)
                           {
                              this.checkSpecialStats();
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.checkSecurityStats();
                                 if(_loc2_)
                                 {
                                    this.checkPermissionAndLevelLockStats();
                                    if(_loc2_)
                                    {
                                       addr0080:
                                       this.checkBuildingMastery();
                                       if(_loc2_)
                                       {
                                          §§push(this.moodEnergyComponent);
                                          if(_loc2_)
                                          {
                                             §§pop().data = this._implementationData.infoLayerConfigPlayfieldItemVo;
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                addr00ae:
                                                §§push(this.moodEnergyComponent);
                                                §§push(this.moodEnergyComponent);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   §§push(!isNaN(this._implementationData.infoLayerConfigPlayfieldItemVo.energyValue));
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      var _temp_9:* = §§pop();
                                                      §§push(_temp_9);
                                                      §§push(_temp_9);
                                                      if(!_loc3_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr00ed:
                                                               §§pop();
                                                               addr00ee:
                                                               §§push(!isNaN(this._implementationData.infoLayerConfigPlayfieldItemVo.moodValue));
                                                            }
                                                         }
                                                         var _temp_10:* = §§pop();
                                                         §§push(_temp_10);
                                                         §§push(_temp_10);
                                                      }
                                                      var _loc1_:* = §§pop();
                                                      §§pop().visible = §§pop();
                                                      §§pop().includeInLayout = _loc1_;
                                                      if(_loc2_)
                                                      {
                                                         §§push(this.residentialComponent);
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            §§pop().data = this._implementationData.infoLayerConfigPlayfieldItemVo;
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               addr0145:
                                                               addr0141:
                                                               §§push(this.residentialComponent);
                                                               §§push(this.residentialComponent);
                                                               §§push(this._implementationData.infoLayerConfigPlayfieldItemVo.baseharvestOutput == null);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               §§pop().includeInLayout = §§pop().visible = §§pop();
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr0171:
                                                                  §§push(this.productionComponent);
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     §§pop().data = this._implementationData.infoLayerConfigPlayfieldItemVo;
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr0194);
                                                                     }
                                                                     §§goto(addr0225);
                                                                  }
                                                                  addr0194:
                                                                  this.productionComponent.includeInLayout = this.productionComponent.visible = this._implementationData.infoLayerConfigPlayfieldItemVo.goodsProduced.length > 0;
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr01b5:
                                                                     §§push(this.shopComponent);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§pop().data = this._implementationData.infoLayerConfigPlayfieldItemVo;
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr01d0:
                                                                           addr01cc:
                                                                           §§push(this.shopComponent);
                                                                           §§push(this.shopComponent);
                                                                           §§push(this._implementationData.infoLayerConfigPlayfieldItemVo.shopRadius == null);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(!§§pop());
                                                                           }
                                                                           var _temp_18:* = §§pop();
                                                                           §§pop().includeInLayout = §§pop().visible = §§pop();
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              addr0212:
                                                                              this.setDividerVisibility();
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 addr0225:
                                                                                 super.commitProperties();
                                                                              }
                                                                              §§goto(addr022a);
                                                                           }
                                                                           §§goto(addr0225);
                                                                        }
                                                                        §§goto(addr022a);
                                                                     }
                                                                     §§goto(addr01d0);
                                                                  }
                                                                  §§goto(addr022a);
                                                               }
                                                               §§goto(addr0212);
                                                            }
                                                            §§goto(addr01b5);
                                                         }
                                                         §§goto(addr0145);
                                                      }
                                                      §§goto(addr0212);
                                                   }
                                                   §§goto(addr00ed);
                                                }
                                                §§goto(addr00ee);
                                             }
                                             §§goto(addr01cc);
                                          }
                                          §§goto(addr00ae);
                                       }
                                       §§goto(addr0141);
                                    }
                                    §§goto(addr01cc);
                                 }
                                 §§goto(addr0080);
                              }
                              addr022a:
                              return;
                           }
                           §§goto(addr0171);
                        }
                        §§goto(addr0225);
                     }
                     §§goto(addr0080);
                  }
               }
            }
            §§goto(addr004e);
         }
         §§goto(addr01cc);
      }
      
      private function checkBuildingMastery() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:MasteryChallengeDTO = null;
         var _loc2_:ConfigMasteryChallengeDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:BriskImageDynaLib = null;
         if(!_loc10_)
         {
            this.masteryGroup.visible = this.masteryGroup.includeInLayout = this._implementationData.masteryChallenge != null && Boolean(this._implementationData.configMasteryChallenge);
            if(!_loc10_)
            {
               if(this.masteryGroup.visible)
               {
                  addr0070:
                  _loc1_ = this._implementationData.masteryChallenge;
                  _loc2_ = this._implementationData.configMasteryChallenge;
                  if(_loc9_ || Boolean(_loc1_))
                  {
                     _loc3_ = 0;
                  }
                  while(true)
                  {
                     if(_loc2_ == null)
                     {
                        if(!(_loc10_ && Boolean(_loc3_)))
                        {
                           §§goto(addr00df);
                        }
                     }
                     else
                     {
                        if(_loc1_.config != _loc2_)
                        {
                           _loc3_++;
                           if(_loc10_)
                           {
                              break;
                           }
                           _loc2_ = _loc2_.nextChallenge;
                           continue;
                        }
                        if(_loc9_)
                        {
                           addr00df:
                           §§push(_loc3_);
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              §§push(§§pop());
                              if(_loc9_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc9_ || Boolean(_loc1_))
                                 {
                                    addr0105:
                                    this.masteryProgressBar.progress = _loc1_.currentProgress;
                                    if(_loc9_ || Boolean(_loc2_))
                                    {
                                       break;
                                    }
                                    addr0138:
                                    var _loc7_:int = 0;
                                    addr0136:
                                    if(!(_loc10_ && Boolean(_loc1_)))
                                    {
                                       for each(_loc6_ in this.masteryStars)
                                       {
                                          if(!(_loc10_ && Boolean(_loc3_)))
                                          {
                                             if(_loc5_ < _loc4_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue;
                                                }
                                                _loc6_.dynaBmpSourceName = "mastery_star_blue";
                                                if(!(_loc9_ || Boolean(this)))
                                                {
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                _loc6_.dynaBmpSourceName = "mastery_star_grey";
                                                if(_loc10_ && Boolean(_loc3_))
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc5_++;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr01c2);
                              }
                              §§goto(addr0138);
                           }
                           §§goto(addr0126);
                        }
                     }
                     §§goto(addr0105);
                  }
                  §§push(0);
                  if(!_loc10_)
                  {
                     addr0126:
                     _loc5_ = §§pop();
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        §§goto(addr0136);
                     }
                     §§goto(addr01c2);
                  }
                  §§goto(addr0138);
               }
               addr01c2:
               return;
            }
         }
         §§goto(addr0070);
      }
      
      private function get masteryStars() : Vector.<BriskImageDynaLib>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._masteryStars == null)
            {
               if(_loc1_)
               {
                  §§push(this);
                  §§pop()._masteryStars = new <BriskImageDynaLib>[this.masteryStar0,this.masteryStar1,this.masteryStar2,this.masteryStar3,this.masteryStar4];
                  addr0023:
               }
            }
            return this._masteryStars;
         }
         §§goto(addr0023);
      }
      
      private function checkSecurityStats() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:ConfigSecurityGradeDTO = null;
         if(!_loc5_)
         {
            this.securityGroup.visible = this.securityGroup.includeInLayout = this._implementationData.configSecurityGrades.length > 0;
            if(_loc6_)
            {
               this.firebadge.visible = this.firebadge.includeInLayout = false;
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§goto(addr0062);
               }
            }
            §§goto(addr0082);
         }
         addr0062:
         this.policebadge.visible = this.policebadge.includeInLayout = false;
         if(!(_loc5_ && Boolean(this)))
         {
            addr0082:
            this.hospitalbadge.visible = this.hospitalbadge.includeInLayout = false;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this._implementationData.configSecurityGrades)
         {
            if(!(_loc6_ || Boolean(_loc2_)))
            {
               continue;
            }
            var _loc4_:* = _loc1_.type;
            if(!_loc5_)
            {
               §§push(ServerTagConstants.FIRE_DEPARTMENT);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                           }
                        }
                        else
                        {
                           addr019c:
                           §§push(1);
                           if(_loc5_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerTagConstants.POLICE_DEPARTMENT);
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    §§goto(addr019c);
                                 }
                                 else
                                 {
                                    addr01b3:
                                    §§push(2);
                                    if(_loc5_)
                                    {
                                    }
                                 }
                                 addr01cb:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.firebadge.visible = this.firebadge.includeInLayout = true;
                                       if(_loc6_)
                                       {
                                       }
                                       break;
                                    case 1:
                                       this.policebadge.visible = this.policebadge.includeInLayout = true;
                                       if(_loc6_)
                                       {
                                       }
                                       break;
                                    case 2:
                                       this.hospitalbadge.visible = this.hospitalbadge.includeInLayout = true;
                                       if(_loc5_)
                                       {
                                       }
                                 }
                              }
                              else
                              {
                                 addr01af:
                                 addr01ad:
                                 if(ServerTagConstants.HOSPITAL === _loc4_)
                                 {
                                    §§goto(addr01b3);
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                                 §§goto(addr01cb);
                              }
                              §§goto(addr01b3);
                           }
                           §§goto(addr01af);
                        }
                        §§goto(addr01ad);
                     }
                     §§goto(addr01cb);
                  }
                  §§goto(addr01af);
               }
               §§goto(addr01ad);
            }
            §§goto(addr01b3);
         }
      }
      
      private function checkPermissionAndLevelLockStats() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            var _temp_3:* = topInformation;
            var _loc1_:Boolean;
            topInformation.includeInLayout = _loc1_ = false;
            _temp_3.visible = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               headerIcon.dynaBmpSourceName = "infolayer_icon_info";
               if(_loc3_)
               {
                  header.labelSidePaddings = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(this._implementationData);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§§pop().userPermissionStock);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              §§push(§§pop() > §§pop());
                              if(!(_loc2_ && _loc2_))
                              {
                                 var _temp_9:* = §§pop();
                                 §§push(_temp_9);
                                 §§push(_temp_9);
                                 if(!_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§pop();
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§push(this._implementationData);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr00cd:
                                                §§push(§§pop().needsPermissions);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr00dc:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            var _temp_14:* = this.permissionGroup;
                                                            this.permissionGroup.includeInLayout = _loc1_ = true;
                                                            _temp_14.visible = _loc1_;
                                                            if(_loc3_)
                                                            {
                                                               this.permissionAmount.text = this._implementationData.userPermissionStock.toString();
                                                               if(!_loc2_)
                                                               {
                                                                  _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_INFO;
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§push(this._implementationData);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr0144:
                                                                        §§push(§§pop().isPremium);
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 addr0165:
                                                                                 §§push(this.permissionIcon);
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    §§push("permission_icon_constructed");
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§pop().dynaBmpSourceName = §§pop();
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr0185:
                                                                                          §§push(this.permissionLabel);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.constructedAvailable"));
                                                                                             if(!(_loc2_ && _loc1_))
                                                                                             {
                                                                                                §§pop().text = §§pop();
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr0357:
                                                                                                   §§push(this._implementationData);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().isReward);
                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         addr0370:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(!(_loc2_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§push(this._implementationData);
                                                                                                               if(!(_loc2_ && _loc3_))
                                                                                                               {
                                                                                                                  addr0392:
                                                                                                                  §§push(§§pop().isUnlocked);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     addr039b:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr03ac:
                                                                                                                           §§push(this._implementationData);
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              addr03b5:
                                                                                                                              §§push(§§pop().userPermissionStock);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 addr03bd:
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc3_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    addr03cc:
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr03de:
                                                                                                                                          addr03dc:
                                                                                                                                          addr03d9:
                                                                                                                                          addr03d5:
                                                                                                                                          if(this._implementationData.buyablePermissionStock > 0)
                                                                                                                                          {
                                                                                                                                             if(!(_loc2_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr0400:
                                                                                                                                                   topInformation.visible = topInformation.includeInLayout = true;
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr0415:
                                                                                                                                                      topInformation.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.permissions.rebuyable");
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr046b:
                                                                                                                                                         topInformation.visible = topInformation.includeInLayout = true;
                                                                                                                                                         if(!(_loc2_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            addr0488:
                                                                                                                                                            topInformation.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.levellock",[this._implementationData.unlockLevel]);
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0527);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0558);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0527);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0415);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr04db:
                                                                                                                                                _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr04ec:
                                                                                                                                                   topInformation.text = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.preHeader.harvest");
                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr050a:
                                                                                                                                                      topInformation.visible = topInformation.includeInLayout = true;
                                                                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         addr0527:
                                                                                                                                                         if(_data.headerIconDynaVo != null)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr053f:
                                                                                                                                                               headerIcon.briskDynaVo = _data.headerIconDynaVo;
                                                                                                                                                               if(_loc3_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  headerIcon.visible = headerIcon.includeInLayout = true;
                                                                                                                                                                  addr0558:
                                                                                                                                                                  if(_loc2_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            headerIcon.visible = headerIcon.includeInLayout = false;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0594);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0527);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr053f);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_GREY_X;
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr0455:
                                                                                                                                                header.labelSidePaddings = 20;
                                                                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr046b);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0558);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0527);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0558);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0527);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03de);
                                                                                                                              }
                                                                                                                              §§goto(addr03dc);
                                                                                                                           }
                                                                                                                           §§goto(addr03d9);
                                                                                                                        }
                                                                                                                        §§goto(addr04db);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_LOCKED;
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §§goto(addr0455);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr046b);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr04b7:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           addr04c0:
                                                                                                                           addr04ca:
                                                                                                                           if((_data as SpecificPlayfieldItemUiInfolayerContentVo).isHarvestReady)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§goto(addr04db);
                                                                                                                              }
                                                                                                                              §§goto(addr04ec);
                                                                                                                           }
                                                                                                                           §§goto(addr0527);
                                                                                                                        }
                                                                                                                        §§goto(addr053f);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0527);
                                                                                                               }
                                                                                                               §§goto(addr03b5);
                                                                                                            }
                                                                                                            §§goto(addr04c0);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_data is SpecificPlayfieldItemUiInfolayerContentVo);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§goto(addr04b7);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr04ca);
                                                                                                   }
                                                                                                   §§goto(addr03d9);
                                                                                                }
                                                                                                §§goto(addr0594);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr01d0:
                                                                                                §§pop().text = §§pop();
                                                                                                if(!(_loc3_ || _loc1_))
                                                                                                {
                                                                                                   addr02c7:
                                                                                                   var _temp_36:* = topInformation;
                                                                                                   topInformation.includeInLayout = _loc1_ = true;
                                                                                                   _temp_36.visible = _loc1_;
                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                   {
                                                                                                      topInformation.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.permissions.rebuyable");
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         addr0302:
                                                                                                         _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            §§goto(addr0357);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0527);
                                                                                                   }
                                                                                                   §§goto(addr0488);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0357);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr01c4:
                                                                                             §§push(LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.permissions.label"));
                                                                                          }
                                                                                          §§goto(addr01d0);
                                                                                       }
                                                                                       §§goto(addr0594);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr01b9:
                                                                                       §§pop().dynaBmpSourceName = §§pop();
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§goto(addr01c4);
                                                                                          §§push(this.permissionLabel);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr04c0);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr01b6:
                                                                                    §§push("permission_icon");
                                                                                 }
                                                                                 §§goto(addr01b9);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr02b0:
                                                                                 this.permissionGroup.visible = this.permissionGroup.includeInLayout = false;
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr02c7);
                                                                                 }
                                                                              }
                                                                              addr0594:
                                                                              return;
                                                                           }
                                                                           §§push(this.permissionIcon);
                                                                           §§goto(addr01b6);
                                                                        }
                                                                        §§goto(addr0370);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr026f:
                                                                        §§push(§§pop().userPermissionStock);
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           addr027f:
                                                                           §§push(0);
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr0294:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc2_ && _loc1_))
                                                                                    {
                                                                                       §§goto(addr02b0);
                                                                                    }
                                                                                    §§goto(addr0400);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_INFO;
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       var _temp_44:* = this.permissionGroup;
                                                                                       this.permissionGroup.includeInLayout = _loc1_ = false;
                                                                                       _temp_44.visible = _loc1_;
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr0357);
                                                                                       }
                                                                                       §§goto(addr046b);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0527);
                                                                              }
                                                                              §§goto(addr04ca);
                                                                           }
                                                                           §§goto(addr03de);
                                                                        }
                                                                     }
                                                                     §§goto(addr03bd);
                                                                  }
                                                                  §§goto(addr0165);
                                                               }
                                                               §§goto(addr050a);
                                                            }
                                                            §§goto(addr0302);
                                                         }
                                                         §§goto(addr03ac);
                                                      }
                                                      else
                                                      {
                                                         §§push(this._implementationData);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop().needsPermissions);
                                                            if(_loc3_)
                                                            {
                                                               addr01f5:
                                                               §§push(§§pop());
                                                               if(!_loc2_)
                                                               {
                                                                  addr01fb:
                                                                  var _temp_46:* = §§pop();
                                                                  §§push(_temp_46);
                                                                  §§push(_temp_46);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(this._implementationData);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop().buyablePermissionStock);
                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr0238:
                                                                                       §§push(§§pop() > §§pop());
                                                                                       if(_loc3_ || _loc1_)
                                                                                       {
                                                                                          addr0246:
                                                                                          var _temp_50:* = §§pop();
                                                                                          addr0247:
                                                                                          §§push(_temp_50);
                                                                                          if(_temp_50)
                                                                                          {
                                                                                             if(_loc3_ || _loc1_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   §§push(this._implementationData);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr026f);
                                                                                                   }
                                                                                                   §§goto(addr0392);
                                                                                                }
                                                                                                §§goto(addr0357);
                                                                                             }
                                                                                             §§goto(addr04ca);
                                                                                          }
                                                                                          §§goto(addr0294);
                                                                                       }
                                                                                       §§goto(addr04b7);
                                                                                    }
                                                                                    §§goto(addr03cc);
                                                                                 }
                                                                                 §§goto(addr03bd);
                                                                              }
                                                                              §§goto(addr03b5);
                                                                           }
                                                                           §§goto(addr02c7);
                                                                        }
                                                                        §§goto(addr039b);
                                                                     }
                                                                     §§goto(addr0246);
                                                                  }
                                                                  §§goto(addr0247);
                                                               }
                                                               §§goto(addr039b);
                                                            }
                                                            §§goto(addr0294);
                                                         }
                                                      }
                                                      §§goto(addr0392);
                                                   }
                                                   §§goto(addr01fb);
                                                }
                                                §§goto(addr01f5);
                                             }
                                             §§goto(addr0144);
                                          }
                                          §§goto(addr04c0);
                                       }
                                       §§goto(addr0370);
                                    }
                                    §§goto(addr00dc);
                                 }
                                 §§goto(addr0247);
                              }
                              §§goto(addr00dc);
                           }
                           §§goto(addr0238);
                        }
                        §§goto(addr027f);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr03d5);
               }
               §§goto(addr053f);
            }
            §§goto(addr0185);
         }
         §§goto(addr02b0);
      }
      
      private function checkSpecialStats() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.specialGroup.visible = this.specialGroup.includeInLayout = this._implementationData.specialText != null;
            if(_loc3_ || _loc3_)
            {
               this.specialtextLabel.text = this._implementationData.specialText;
            }
         }
      }
      
      private function setDividerVisibility() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         var _loc4_:UIComponent = null;
         var _loc2_:Vector.<UIComponent> = new Vector.<UIComponent>();
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc9_ || Boolean(this)))
            {
               break;
            }
            if(§§pop() >= this.contentVGroup.numElements)
            {
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  addr0170:
                  §§push(0);
                  break;
               }
            }
            else
            {
               §§push(Boolean(this.contentVGroup.getElementAt(_loc3_).includeInLayout));
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(_loc9_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc8_ && Boolean(_loc3_)))
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              continue;
                           }
                           §§push(this.contentVGroup.getElementAt(_loc3_) is BriskImageDynaLib);
                           if(_loc9_)
                           {
                              addr0083:
                              var _temp_7:* = §§pop();
                              addr0084:
                              §§push(_temp_7);
                              if(_temp_7)
                              {
                                 if(!_loc8_)
                                 {
                                    §§goto(addr008e);
                                 }
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr0084);
               }
               addr008e:
               §§pop();
               if(_loc9_)
               {
                  §§push(BriskImageDynaLib(this.contentVGroup.getElementAt(_loc3_)).dynaBmpSourceName == "infolayer_divider_new");
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     addr00b7:
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§goto(addr00cd);
                        }
                        §§goto(addr00df);
                     }
                     §§goto(addr0138);
                  }
                  addr00cd:
                  if(this.contentVGroup.getElementAt(_loc3_) is BriskImageDynaLib)
                  {
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        addr00df:
                        this.contentVGroup.getElementAt(_loc3_).includeInLayout = false;
                        if(_loc9_ || Boolean(this))
                        {
                           this.contentVGroup.getElementAt(_loc3_).visible = false;
                           if(!_loc8_)
                           {
                              §§goto(addr010f);
                           }
                        }
                     }
                     §§goto(addr0138);
                  }
                  addr010f:
                  _loc2_.push(this.contentVGroup.getElementAt(_loc3_));
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     addr0138:
                     _loc3_++;
                     if(_loc9_ || Boolean(_loc2_))
                     {
                        continue;
                     }
                     §§goto(addr0170);
                  }
               }
               §§goto(addr026c);
            }
            §§goto(addr026c);
         }
         var _loc5_:* = §§pop();
         if(!_loc8_)
         {
            for each(_loc4_ in _loc2_)
            {
               if(!(_loc4_ is BriskImageDynaLib))
               {
                  continue;
               }
               _loc1_ = _loc4_ as BriskImageDynaLib;
               if(!_loc8_)
               {
                  if(_loc1_.dynaBmpSourceName != "infolayer_divider_new")
                  {
                     continue;
                  }
                  if(_loc9_)
                  {
                     §§push(_loc2_.indexOf(_loc1_) == 0);
                     if(_loc9_ || Boolean(this))
                     {
                        §§push(!§§pop());
                        if(_loc9_)
                        {
                           var _temp_15:* = §§pop();
                           §§push(_temp_15);
                           if(_temp_15)
                           {
                              if(_loc9_)
                              {
                                 §§pop();
                                 if(_loc8_ && Boolean(_loc3_))
                                 {
                                    continue;
                                 }
                                 addr01ea:
                                 §§push(_loc2_.indexOf(_loc1_) == _loc2_.length - 1);
                                 if(!(_loc8_ && Boolean(_loc2_)))
                                 {
                                    addr0203:
                                    §§push(!§§pop());
                                    if(_loc9_ || Boolean(_loc1_))
                                    {
                                       addr0212:
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(_loc8_ && Boolean(_loc2_))
                                       {
                                          continue;
                                       }
                                       §§push(_loc2_[_loc2_.indexOf(_loc1_) - 1] is BriskImageDynaLib);
                                    }
                                 }
                              }
                              addr0241:
                              if(!§§pop())
                              {
                                 if(_loc9_ || Boolean(_loc1_))
                                 {
                                    _loc1_.includeInLayout = _loc1_.visible = true;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr0212);
                        }
                        §§goto(addr0203);
                     }
                     §§goto(addr0241);
                  }
               }
               §§goto(addr01ea);
            }
         }
         addr026c:
      }
      
      private function _PlayfieldItemUiInfolayerContent_Array1_c() : Array
      {
         return [this._PlayfieldItemUiInfolayerContent_VGroup1_i()];
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.maxWidth = 220;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.paddingLeft = 5;
                     if(_loc2_)
                     {
                        addr0052:
                        _loc1_.paddingRight = 5;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0065:
                           _loc1_.minWidth = 1;
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_VGroup2_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib2_c(),this._PlayfieldItemUiInfolayerContent_VGroup3_i(),this._PlayfieldItemUiInfolayerContent_VGroup4_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib8_c(),this._PlayfieldItemUiInfolayerContent_InfoLayerResidentialComponent1_i(),this._PlayfieldItemUiInfolayerContent_InfoLayerProductionComponent1_i(),this._PlayfieldItemUiInfolayerContent_InfoLayerShopComponent1_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib9_c(),this._PlayfieldItemUiInfolayerContent_VGroup5_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib13_c(),this._PlayfieldItemUiInfolayerContent_InfoLayerEnergyMoodComponent1_i()];
                              §§goto(addr0078);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr012b);
                     }
                     §§goto(addr00ef);
                  }
                  §§goto(addr0065);
               }
               addr0078:
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "contentVGroup";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr00ef:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr0121);
                           }
                        }
                        §§goto(addr012b);
                     }
                  }
               }
               addr0121:
               this.contentVGroup = _loc1_;
               if(!_loc3_)
               {
                  addr012b:
                  BindingManager.executeBindings(this,"contentVGroup",this.contentVGroup);
               }
               return _loc1_;
            }
         }
         §§goto(addr0052);
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup2_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  addr0058:
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_HGroup1_c()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "permissionGroup";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr009b:
                                 this.permissionGroup = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00a5:
                                    BindingManager.executeBindings(this,"permissionGroup",this.permissionGroup);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr009b);
            }
            §§goto(addr0058);
         }
         §§goto(addr009b);
      }
      
      private function _PlayfieldItemUiInfolayerContent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_LocaLabel1_i(),this._PlayfieldItemUiInfolayerContent_LocaLabel2_i(),this._PlayfieldItemUiInfolayerContent_Group1_c()];
                  if(_loc3_)
                  {
                     addr0071:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0071);
            }
         }
         addr0081:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc3_ || _loc2_)
            {
               _loc1_.styleName = "infoLabelLeft";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.id = "permissionLabel";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0091:
                                 this.permissionLabel = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00a3:
                                    BindingManager.executeBindings(this,"permissionLabel",this.permissionLabel);
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr0091);
                     }
                  }
               }
               §§goto(addr00a3);
            }
            addr00b0:
            return _loc1_;
         }
         §§goto(addr0088);
      }
      
      private function _PlayfieldItemUiInfolayerContent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_ || _loc3_)
            {
               _loc1_.styleName = "infoLabel";
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr0052);
               }
               §§goto(addr007e);
            }
            §§goto(addr0099);
         }
         addr0052:
         _loc1_.id = "permissionAmount";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr007e:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0099);
            }
            addr0087:
            this.permissionAmount = _loc1_;
            if(_loc3_ || _loc2_)
            {
               addr0099:
               BindingManager.executeBindings(this,"permissionAmount",this.permissionAmount);
            }
            §§goto(addr00a6);
         }
         addr00a6:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 28;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 36;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib1_i()];
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0076);
                  }
                  §§goto(addr0082);
               }
               addr0076:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0082:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr0082);
         }
         addr0086:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr008e);
               }
            }
            addr0061:
            _loc1_.id = "permissionIcon";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr008e:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr009f);
                     }
                     §§goto(addr00a9);
                  }
               }
            }
            addr009f:
            this.permissionIcon = _loc1_;
            if(!_loc2_)
            {
               addr00a9:
               BindingManager.executeBindings(this,"permissionIcon",this.permissionIcon);
            }
            §§goto(addr00b6);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.includeInLayout = false;
            if(_loc2_)
            {
               _loc1_.visible = false;
               if(!_loc3_)
               {
                  _loc1_.dynaLibName = "gui_infield_gui_infolayer";
                  if(!_loc3_)
                  {
                     addr0062:
                     _loc1_.dynaBmpSourceName = "infolayer_divider_new";
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0085);
                     }
                  }
                  §§goto(addr0081);
               }
            }
            §§goto(addr0062);
         }
         addr0085:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_LocaLabel3_i()];
                  §§goto(addr003a);
               }
               §§goto(addr0056);
            }
            addr003a:
            if(_loc2_)
            {
               addr0056:
               _loc1_.id = "specialGroup";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0088:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr0091);
                        }
                     }
                     §§goto(addr00a3);
                  }
                  addr0091:
                  this.specialGroup = _loc1_;
                  if(_loc2_ || _loc3_)
                  {
                     addr00a3:
                     BindingManager.executeBindings(this,"specialGroup",this.specialGroup);
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr0088);
            }
            addr00b0:
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _PlayfieldItemUiInfolayerContent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "infoLabel";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 80;
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "specialtextLabel";
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0072:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr008f);
                              }
                           }
                           §§goto(addr00a1);
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0072);
            }
            addr008f:
            this.specialtextLabel = _loc1_;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr00a1:
               BindingManager.executeBindings(this,"specialtextLabel",this.specialtextLabel);
            }
            return _loc1_;
         }
         §§goto(addr00a1);
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup4_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0039:
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || Boolean(this))
               {
                  addr0058:
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_HGroup2_i(),this._PlayfieldItemUiInfolayerContent_SlimProgressBarComponent1_i()];
                  if(!_loc2_)
                  {
                     _loc1_.id = "masteryGroup";
                     if(!_loc2_)
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a2:
                                 this.masteryGroup = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b4:
                                    BindingManager.executeBindings(this,"masteryGroup",this.masteryGroup);
                                 }
                                 §§goto(addr00c1);
                              }
                              §§goto(addr00b4);
                           }
                           addr00c1:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr00a2);
            }
            §§goto(addr0058);
         }
         §§goto(addr0039);
      }
      
      private function _PlayfieldItemUiInfolayerContent_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib3_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib4_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib5_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib6_i(),this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib7_i()];
            if(_loc3_)
            {
               _loc1_.id = "masteryStarGroup";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0083:
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr00a0);
                        }
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00b2);
            }
            addr00a0:
            this.masteryStarGroup = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               addr00b2:
               BindingManager.executeBindings(this,"masteryStarGroup",this.masteryStarGroup);
            }
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               _loc1_.id = "masteryStar0";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr0088);
                     }
                  }
                  addr0076:
                  this.masteryStar0 = _loc1_;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0088:
                     BindingManager.executeBindings(this,"masteryStar0",this.masteryStar0);
                  }
                  §§goto(addr0095);
               }
            }
         }
         addr0095:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.id = "masteryStar1";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr006d:
                           this.masteryStar1 = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              BindingManager.executeBindings(this,"masteryStar1",this.masteryStar1);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr006d);
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.id = "masteryStar2";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0070:
                           this.masteryStar2 = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"masteryStar2",this.masteryStar2);
                           }
                        }
                        §§goto(addr0087);
                     }
                  }
               }
            }
            §§goto(addr0070);
         }
         addr0087:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.id = "masteryStar3";
               if(!_loc2_)
               {
                  addr0043:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0075:
                           this.masteryStar3 = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"masteryStar3",this.masteryStar3);
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
            §§goto(addr0075);
         }
         §§goto(addr0043);
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.id = "masteryStar4";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0051:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0079:
                           this.masteryStar4 = _loc1_;
                           if(_loc2_)
                           {
                              addr0083:
                              BindingManager.executeBindings(this,"masteryStar4",this.masteryStar4);
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0079);
               }
               addr0090:
               return _loc1_;
            }
            §§goto(addr0079);
         }
         §§goto(addr0051);
      }
      
      private function _PlayfieldItemUiInfolayerContent_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 155;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.progress = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr005c:
                  _loc1_.id = "masteryProgressBar";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007b:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0098);
                           }
                        }
                        §§goto(addr00aa);
                     }
                     addr0098:
                     this.masteryProgressBar = _loc1_;
                     if(_loc2_ || Boolean(this))
                     {
                        addr00aa:
                        BindingManager.executeBindings(this,"masteryProgressBar",this.masteryProgressBar);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00aa);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr005c);
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.visible = false;
               if(!_loc3_)
               {
                  addr0046:
                  _loc1_.dynaLibName = "gui_infield_gui_infolayer";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceName = "infolayer_divider_new";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr008c);
                  }
               }
               addr0078:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr008c:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0090);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _PlayfieldItemUiInfolayerContent_InfoLayerResidentialComponent1_i() : InfoLayerResidentialComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerResidentialComponent = new InfoLayerResidentialComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.id = "residentialComponent";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005f:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0068);
                     }
                  }
                  §§goto(addr007a);
               }
            }
            addr0068:
            this.residentialComponent = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               addr007a:
               BindingManager.executeBindings(this,"residentialComponent",this.residentialComponent);
            }
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _PlayfieldItemUiInfolayerContent_InfoLayerProductionComponent1_i() : InfoLayerProductionComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerProductionComponent = new InfoLayerProductionComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.id = "productionComponent";
            if(_loc3_)
            {
               addr0042:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr006e:
                        this.productionComponent = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           BindingManager.executeBindings(this,"productionComponent",this.productionComponent);
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr006e);
         }
         §§goto(addr0042);
      }
      
      private function _PlayfieldItemUiInfolayerContent_InfoLayerShopComponent1_i() : InfoLayerShopComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerShopComponent = new InfoLayerShopComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.id = "shopComponent";
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr0077);
                  }
               }
            }
         }
         addr006d:
         this.shopComponent = _loc1_;
         if(_loc2_)
         {
            addr0077:
            BindingManager.executeBindings(this,"shopComponent",this.shopComponent);
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc2_)
            {
               _loc1_.visible = false;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr004c);
               }
               §§goto(addr0095);
            }
            addr004c:
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               addr005f:
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0081);
               }
               §§goto(addr0095);
            }
            addr0081:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0095:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _PlayfieldItemUiInfolayerContent_VGroup5_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_HGroup3_c()];
                  if(_loc3_)
                  {
                     _loc1_.id = "securityGroup";
                     if(_loc3_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0088:
                                 this.securityGroup = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr0092:
                                    BindingManager.executeBindings(this,"securityGroup",this.securityGroup);
                                 }
                              }
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr007f);
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr0092);
         }
         §§goto(addr0073);
      }
      
      private function _PlayfieldItemUiInfolayerContent_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_LocaLabel4_i(),this._PlayfieldItemUiInfolayerContent_Group2_i(),this._PlayfieldItemUiInfolayerContent_Group3_i(),this._PlayfieldItemUiInfolayerContent_Group4_i()];
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr00a3:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a7);
                  }
               }
               §§goto(addr00a3);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr00a3);
      }
      
      private function _PlayfieldItemUiInfolayerContent_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(!_loc3_)
            {
               _loc1_.styleName = "infoLabelLeft";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "_PlayfieldItemUiInfolayerContent_LocaLabel4";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0090:
                                 this._PlayfieldItemUiInfolayerContent_LocaLabel4 = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009a:
                                    BindingManager.executeBindings(this,"_PlayfieldItemUiInfolayerContent_LocaLabel4",this._PlayfieldItemUiInfolayerContent_LocaLabel4);
                                 }
                              }
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr0090);
                     }
                  }
                  §§goto(addr009a);
               }
               addr00a7:
               return _loc1_;
            }
         }
         §§goto(addr0087);
      }
      
      private function _PlayfieldItemUiInfolayerContent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 28;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 36;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib10_i()];
                  addr003b:
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "_PlayfieldItemUiInfolayerContent_Group2";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008c:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr009d);
                              }
                              §§goto(addr00a8);
                           }
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr008c);
               }
               addr009d:
               this._PlayfieldItemUiInfolayerContent_Group2 = _loc1_;
               if(_loc3_)
               {
                  addr00a8:
                  BindingManager.executeBindings(this,"_PlayfieldItemUiInfolayerContent_Group2",this._PlayfieldItemUiInfolayerContent_Group2);
               }
               §§goto(addr00b6);
            }
            §§goto(addr003b);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  addr0042:
                  _loc1_.dynaLibName = "gui_infield_gui_infolayer";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.dynaBmpSourceName = "badge_fire";
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "firebadge";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr00a2);
                              }
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00bd);
               }
               addr00a2:
               _loc1_.document = this;
               if(!(_loc3_ && _loc2_))
               {
                  addr00b3:
                  this.firebadge = _loc1_;
                  if(!_loc3_)
                  {
                     addr00bd:
                     BindingManager.executeBindings(this,"firebadge",this.firebadge);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0042);
      }
      
      private function _PlayfieldItemUiInfolayerContent_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 28;
            if(_loc3_)
            {
               _loc1_.height = 36;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib11_i()];
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr00ae);
            }
            §§goto(addr009b);
         }
         addr005e:
         _loc1_.id = "_PlayfieldItemUiInfolayerContent_Group3";
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0092:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr009b:
                     this._PlayfieldItemUiInfolayerContent_Group3 = _loc1_;
                     if(_loc3_ || Boolean(this))
                     {
                        addr00ae:
                        BindingManager.executeBindings(this,"_PlayfieldItemUiInfolayerContent_Group3",this._PlayfieldItemUiInfolayerContent_Group3);
                     }
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr00ae);
            }
            §§goto(addr009b);
         }
         addr00bc:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.verticalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.dynaLibName = "gui_infield_gui_infolayer";
                  if(!_loc2_)
                  {
                     addr0051:
                     _loc1_.dynaBmpSourceName = "badge_police";
                     if(_loc3_)
                     {
                        _loc1_.id = "policebadge";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr006f:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr008f);
                              }
                           }
                           §§goto(addr00a0);
                        }
                        addr008f:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00a0:
                           this.policebadge = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"policebadge",this.policebadge);
                           }
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr006f);
                  }
               }
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _PlayfieldItemUiInfolayerContent_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 28;
            if(!_loc2_)
            {
               §§goto(addr002a);
            }
            §§goto(addr0098);
         }
         addr002a:
         _loc1_.height = 36;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._PlayfieldItemUiInfolayerContent_BriskImageDynaLib12_i()];
            if(!_loc2_)
            {
               _loc1_.id = "_PlayfieldItemUiInfolayerContent_Group4";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0098:
                           this._PlayfieldItemUiInfolayerContent_Group4 = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00ab:
                              BindingManager.executeBindings(this,"_PlayfieldItemUiInfolayerContent_Group4",this._PlayfieldItemUiInfolayerContent_Group4);
                           }
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00b9);
            }
            §§goto(addr0098);
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "badge_hospital";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0068:
                        _loc1_.id = "hospitalbadge";
                        if(_loc3_)
                        {
                           addr0073:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr009c:
                                    this.hospitalbadge = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00a6:
                                       BindingManager.executeBindings(this,"hospitalbadge",this.hospitalbadge);
                                    }
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00a6);
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0073);
                  }
                  addr00b3:
                  return _loc1_;
               }
               §§goto(addr0073);
            }
            §§goto(addr0068);
         }
         §§goto(addr00a6);
      }
      
      private function _PlayfieldItemUiInfolayerContent_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc2_ || _loc3_)
            {
               _loc1_.visible = false;
               addr0031:
               if(!_loc3_)
               {
                  _loc1_.dynaLibName = "gui_infield_gui_infolayer";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.dynaBmpSourceName = "infolayer_divider_new";
                     §§goto(addr0059);
                  }
                  §§goto(addr0078);
               }
               addr0059:
               if(!(_loc3_ && _loc3_))
               {
                  addr0078:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0090);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _PlayfieldItemUiInfolayerContent_InfoLayerEnergyMoodComponent1_i() : InfoLayerEnergyMoodComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerEnergyMoodComponent = new InfoLayerEnergyMoodComponent();
         if(_loc2_)
         {
            _loc1_.id = "moodEnergyComponent";
            if(_loc2_ || _loc3_)
            {
               addr0036:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0075:
                        this.moodEnergyComponent = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr0087:
                           BindingManager.executeBindings(this,"moodEnergyComponent",this.moodEnergyComponent);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0075);
            }
            §§goto(addr0087);
         }
         §§goto(addr0036);
      }
      
      private function _PlayfieldItemUiInfolayerContent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(0);
                     if(_loc2_ || _loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.departments.label");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"_PlayfieldItemUiInfolayerContent_LocaLabel4.text");
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              addr0089:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0098:
                                 §§push(1);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Boolean
                                    {
                                       return firebadge.includeInLayout;
                                    },null,"_PlayfieldItemUiInfolayerContent_Group2.includeInLayout");
                                    if(!_loc3_)
                                    {
                                       addr00be:
                                       §§push(§§newactivation());
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(2);
                                             if(_loc2_)
                                             {
                                                addr00db:
                                                §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                {
                                                   return policebadge.includeInLayout;
                                                },null,"_PlayfieldItemUiInfolayerContent_Group3.includeInLayout");
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr0108:
                                                   §§push(§§newactivation());
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr010f);
                                                   }
                                                   §§goto(addr012c);
                                                }
                                                §§goto(addr012a);
                                             }
                                             §§goto(addr0118);
                                          }
                                          §§goto(addr0116);
                                       }
                                       §§goto(addr010f);
                                    }
                                    §§goto(addr0108);
                                 }
                                 §§goto(addr00db);
                              }
                              §§goto(addr0116);
                           }
                           §§goto(addr010f);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0089);
            }
            §§goto(addr0108);
         }
         addr010f:
         §§push(§§pop().§§slot[1]);
         if(!_loc3_)
         {
            addr0118:
            §§pop()[3] = new Binding(this,function():Boolean
            {
               return hospitalbadge.includeInLayout;
            },null,"_PlayfieldItemUiInfolayerContent_Group4.includeInLayout");
            addr012c:
            addr012a:
            §§push(result);
            addr0116:
         }
         return §§pop();
      }
      
      [Bindable(event="propertyChange")]
      public function get contentVGroup() : VGroup
      {
         return this._282001022contentVGroup;
      }
      
      public function set contentVGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._282001022contentVGroup;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._282001022contentVGroup = param1;
                  if(!_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentVGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get firebadge() : BriskImageDynaLib
      {
         return this._284027091firebadge;
      }
      
      public function set firebadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._284027091firebadge;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               addr0071:
               §§push(_loc3_);
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firebadge",_loc2_,param1));
            }
         }
         else if(this.hasEventListener("propertyChange"))
         {
            if(!(_loc4_ && Boolean(param1)))
            {
               §§goto(addr0071);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hospitalbadge() : BriskImageDynaLib
      {
         return this._1454149207hospitalbadge;
      }
      
      public function set hospitalbadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1454149207hospitalbadge;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1454149207hospitalbadge = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0062);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0062:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hospitalbadge",_loc2_,param1));
                  }
               }
               §§goto(addr0071);
            }
            addr0071:
            return;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryGroup() : VGroup
      {
         return this._96419224masteryGroup;
      }
      
      public function set masteryGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._96419224masteryGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._96419224masteryGroup = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryProgressBar() : SlimProgressBarComponent
      {
         return this._350687281masteryProgressBar;
      }
      
      public function set masteryProgressBar(param1:SlimProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._350687281masteryProgressBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._350687281masteryProgressBar = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryProgressBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar0() : BriskImageDynaLib
      {
         return this._85291001masteryStar0;
      }
      
      public function set masteryStar0(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85291001masteryStar0;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._85291001masteryStar0 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar0",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar1() : BriskImageDynaLib
      {
         return this._85291000masteryStar1;
      }
      
      public function set masteryStar1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85291000masteryStar1;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._85291000masteryStar1 = param1;
                  if(!_loc4_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar1",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar2() : BriskImageDynaLib
      {
         return this._85290999masteryStar2;
      }
      
      public function set masteryStar2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85290999masteryStar2;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._85290999masteryStar2 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar2",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar3() : BriskImageDynaLib
      {
         return this._85290998masteryStar3;
      }
      
      public function set masteryStar3(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85290998masteryStar3;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004e:
                  this._85290998masteryStar3 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar3",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar4() : BriskImageDynaLib
      {
         return this._85290997masteryStar4;
      }
      
      public function set masteryStar4(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85290997masteryStar4;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0036:
                  this._85290997masteryStar4 = param1;
                  if(!_loc3_)
                  {
                     addr0040:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0040);
            }
            addr005e:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStarGroup() : HGroup
      {
         return this._1694421686masteryStarGroup;
      }
      
      public function set masteryStarGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1694421686masteryStarGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0041:
                  this._1694421686masteryStarGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStarGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodEnergyComponent() : InfoLayerEnergyMoodComponent
      {
         return this._845656926moodEnergyComponent;
      }
      
      public function set moodEnergyComponent(param1:InfoLayerEnergyMoodComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._845656926moodEnergyComponent;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._845656926moodEnergyComponent = param1;
                  addr0046:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodEnergyComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionAmount() : LocaLabel
      {
         return this._407317255permissionAmount;
      }
      
      public function set permissionAmount(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._407317255permissionAmount;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0037:
                  this._407317255permissionAmount = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionAmount",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0055);
            }
            addr007b:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionGroup() : VGroup
      {
         return this._1643738640permissionGroup;
      }
      
      public function set permissionGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1643738640permissionGroup;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1643738640permissionGroup = param1;
                  addr0042:
                  if(_loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr006f);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionIcon() : BriskImageDynaLib
      {
         return this._1438451992permissionIcon;
      }
      
      public function set permissionIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1438451992permissionIcon;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1438451992permissionIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionLabel() : LocaLabel
      {
         return this._1639640475permissionLabel;
      }
      
      public function set permissionLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1639640475permissionLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0037:
                  this._1639640475permissionLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get policebadge() : BriskImageDynaLib
      {
         return this._1595242821policebadge;
      }
      
      public function set policebadge(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1595242821policebadge;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1595242821policebadge = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr007e);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr007e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"policebadge",_loc2_,param1));
                  }
               }
               §§goto(addr008d);
            }
            addr008d:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get productionComponent() : InfoLayerProductionComponent
      {
         return this._366670780productionComponent;
      }
      
      public function set productionComponent(param1:InfoLayerProductionComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._366670780productionComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._366670780productionComponent = param1;
                  if(_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
                  §§goto(addr0052);
               }
            }
            addr0061:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentialComponent() : InfoLayerResidentialComponent
      {
         return this._607607385residentialComponent;
      }
      
      public function set residentialComponent(param1:InfoLayerResidentialComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._607607385residentialComponent;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._607607385residentialComponent = param1;
                  if(!_loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentialComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0060);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get securityGroup() : VGroup
      {
         return this._726395105securityGroup;
      }
      
      public function set securityGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._726395105securityGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._726395105securityGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr0071);
               }
               addr005a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get shopComponent() : InfoLayerShopComponent
      {
         return this._665626969shopComponent;
      }
      
      public function set shopComponent(param1:InfoLayerShopComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._665626969shopComponent;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._665626969shopComponent = param1;
                  if(_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get specialGroup() : VGroup
      {
         return this._1286778554specialGroup;
      }
      
      public function set specialGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1286778554specialGroup;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1286778554specialGroup = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0066);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get specialtextLabel() : LocaLabel
      {
         return this._1615133998specialtextLabel;
      }
      
      public function set specialtextLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1615133998specialtextLabel;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1615133998specialtextLabel = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialtextLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
         }
         addr0084:
      }
   }
}

