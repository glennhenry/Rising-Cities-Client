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
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.ImprovementEfficiencyItemRenderer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.skins.ImprovementEfficiencyListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.ImprovementUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovementUiInfolayerContent extends AbstractUIInfolayerComponent implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         _skinParts = {
            "backgroundGroup":true,
            "topInformation":true,
            "header":true,
            "headerIcon":true,
            "contentGroup":false
         };
      }
      
      private var _163328345efficiencyList:List;
      
      private var _385971994improvementProgressComponent:TimerBarComponent;
      
      private var _181955275qualityLabel:LocaLabel;
      
      private var _559815988qualityText:LocaLabel;
      
      private var _2053116446unlimitedGroup:HGroup;
      
      private var _1554700218unlimitedTimeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:ImprovementUiInfolayerContentVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementUiInfolayerContent()
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
         if(!_loc3_)
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0040:
                     §§pop().§§slot[5] = null;
                     if(_loc4_ || _loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!(_loc3_ && _loc3_))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0083:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || Boolean(this))
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       addr009f:
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§pop().§§slot[1] = this._ImprovementUiInfolayerContent_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                addr00d0:
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   addr00d8:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_ImprovementUiInfolayerContentWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr014b:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0162:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovementUiInfolayerContent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr0180:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01a6:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01cd:
                                                                                       this.maxWidth = 230;
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr01e1:
                                                                                          this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementUiInfolayerContent_Array1_c);
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             addr0200:
                                                                                             i = 0;
                                                                                             addr01fe:
                                                                                          }
                                                                                       }
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
                                                                                                if(!(_loc4_ || _loc3_))
                                                                                                {
                                                                                                   break loop1;
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[4]);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(uint(§§pop() + 1));
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      var _temp_18:* = §§pop();
                                                                                                      §§pop().§§slot[4] = _temp_18;
                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                      {
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                    }
                                                                                    return;
                                                                                    addr0266:
                                                                                 }
                                                                                 §§goto(addr01e1);
                                                                              }
                                                                              §§goto(addr01a6);
                                                                           }
                                                                           §§goto(addr01cd);
                                                                        }
                                                                        §§goto(addr0200);
                                                                     }
                                                                     §§goto(addr0266);
                                                                  }
                                                                  §§goto(addr0200);
                                                               }
                                                               §§goto(addr01fe);
                                                            }
                                                            §§goto(addr0162);
                                                         }
                                                         §§goto(addr01e1);
                                                      }
                                                      §§goto(addr014b);
                                                   }
                                                   §§goto(addr01fe);
                                                }
                                                §§goto(addr014b);
                                             }
                                             §§goto(addr01e1);
                                          }
                                          §§goto(addr014b);
                                       }
                                       §§goto(addr01a6);
                                    }
                                    §§goto(addr0162);
                                 }
                                 §§goto(addr0180);
                              }
                              §§goto(addr0162);
                           }
                           §§goto(addr0083);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr01cd);
                  }
                  §§goto(addr014b);
               }
               §§goto(addr009f);
            }
            §§goto(addr0040);
         }
         §§goto(addr00d8);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            ImprovementUiInfolayerContent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr0051);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0051:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 is ImprovementUiInfolayerContentVo)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._implementationData = param1 as ImprovementUiInfolayerContentVo;
                  addr0043:
                  if(!_loc2_)
                  {
                     super.data = param1;
                     if(_loc2_ && _loc2_)
                     {
                     }
                  }
               }
               return;
            }
            throw new ArgumentError("Wrong Vo for this component use ImprovementUiInfolayerContentVo " + this);
         }
         §§goto(addr0043);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Boolean(this._implementationData));
            if(_loc2_ || _loc1_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr003b:
                     §§pop();
                     if(!_loc3_)
                     {
                        addr0045:
                        if(_dirty)
                        {
                           if(_loc2_)
                           {
                              this.efficiencyList.dataProvider = this._implementationData.listOfEffiencies;
                              if(_loc2_)
                              {
                                 this.qualityLabel.text = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.qualitylabel");
                                 if(_loc2_)
                                 {
                                    addr0079:
                                    §§push(this.qualityText);
                                    §§push(LocaUtils);
                                    §§push("rcl.guiinfolayer.improvements");
                                    §§push("rcl.guiinfolayer.improvements.quality.");
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() + this._implementationData.quality);
                                    }
                                    §§pop().text = §§pop().getString(§§pop(),§§pop());
                                 }
                                 addr013f:
                                 §§push(this._implementationData);
                                 if(_loc2_ || _loc2_)
                                 {
                                    var _loc1_:* = §§pop().quality;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(ServerImprovementConstants.QUALITY_COMMON);
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          §§push(_loc1_);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§push(0);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr022e:
                                                   §§push(3);
                                                   if(_loc3_ && Boolean(this))
                                                   {
                                                   }
                                                }
                                                §§goto(addr024d);
                                             }
                                             else
                                             {
                                                §§push(ServerImprovementConstants.QUALITY_EPIC);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(_loc1_);
                                                   if(!_loc3_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            §§push(1);
                                                            if(_loc2_ || Boolean(this))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0210:
                                                            §§push(2);
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerImprovementConstants.QUALITY_RARE);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr0210);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr022e);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr022a);
                                                               }
                                                               §§goto(addr022e);
                                                            }
                                                            addr022a:
                                                            §§goto(addr0229);
                                                         }
                                                         addr0229:
                                                         if(ServerImprovementConstants.QUALITY_LEGENDARY === _loc1_)
                                                         {
                                                            §§goto(addr022e);
                                                         }
                                                         else
                                                         {
                                                            §§push(4);
                                                         }
                                                         §§goto(addr024d);
                                                      }
                                                      addr024d:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            §§push(this.qualityText);
                                                            if(!(_loc3_ && Boolean(_loc1_)))
                                                            {
                                                               §§push("improvementQualityCommon");
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop().styleName = §§pop();
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                  }
                                                                  addr0268:
                                                                  §§push(this.improvementProgressComponent);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(this.improvementProgressComponent);
                                                                     §§push(this._implementationData.timerFull == -1);
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                     §§pop().includeInLayout = _loc1_ = §§pop();
                                                                     §§push(_loc1_);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§pop().visible = §§pop();
                                                                        if(!_loc3_)
                                                                        {
                                                                           var _temp_16:* = this.unlimitedGroup;
                                                                           this.unlimitedGroup.includeInLayout = _loc1_ = !this.improvementProgressComponent.visible;
                                                                           _temp_16.visible = _loc1_;
                                                                           if(!_loc3_)
                                                                           {
                                                                              this.unlimitedTimeLabel.text = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.timer.unlimited");
                                                                              if(!(_loc2_ || _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr02e4:
                                                                              §§push(this.improvementProgressComponent);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(this._implementationData);
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop().harvestProgressVo);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0316:
                                                                                       §§push(§§pop() == null);
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       §§pop().revertFlow = §§pop();
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr032a:
                                                                                          addr032e:
                                                                                          if(this._implementationData.harvestProgressVo != null)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                addr0346:
                                                                                                this.improvementProgressComponent.data = this._implementationData.harvestProgressVo;
                                                                                                addr0343:
                                                                                                addr033f:
                                                                                                addr033b:
                                                                                                if(!(_loc2_ || _loc1_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr0355:
                                                                                       super.commitProperties();
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr0346);
                                                                                 }
                                                                                 §§goto(addr0343);
                                                                              }
                                                                              §§goto(addr033f);
                                                                           }
                                                                           §§goto(addr032a);
                                                                        }
                                                                        §§goto(addr02e4);
                                                                     }
                                                                     §§goto(addr0316);
                                                                  }
                                                                  §§goto(addr033f);
                                                               }
                                                               else
                                                               {
                                                                  addr012f:
                                                                  §§pop().styleName = §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr0268);
                                                                  }
                                                               }
                                                               §§goto(addr02e4);
                                                            }
                                                            else
                                                            {
                                                               addr010a:
                                                               §§push("improvementQualityRare");
                                                               if(!_loc3_)
                                                               {
                                                                  addr0113:
                                                                  §§pop().styleName = §§pop();
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§goto(addr0268);
                                                                  }
                                                                  §§goto(addr033b);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr012f);
                                                               }
                                                            }
                                                            §§goto(addr012f);
                                                         case 1:
                                                            §§push(this.qualityText);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push("improvementQualityEpic");
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop().styleName = §§pop();
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                  }
                                                                  §§goto(addr0268);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr0113);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr010a);
                                                            }
                                                            §§goto(addr0113);
                                                         case 2:
                                                            §§push(this.qualityText);
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               §§goto(addr010a);
                                                            }
                                                            else
                                                            {
                                                               addr012b:
                                                               §§push("improvementQualityLegendary");
                                                            }
                                                            §§goto(addr012f);
                                                         case 3:
                                                            §§goto(addr012b);
                                                            §§push(this.qualityText);
                                                         default:
                                                            §§goto(addr0268);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr022a);
                                                }
                                                §§goto(addr0229);
                                             }
                                          }
                                          §§goto(addr022a);
                                       }
                                       §§goto(addr0229);
                                    }
                                    §§goto(addr022e);
                                 }
                                 §§goto(addr032e);
                              }
                           }
                           §§goto(addr0079);
                        }
                        §§goto(addr0355);
                     }
                     §§goto(addr013f);
                  }
               }
               §§goto(addr0045);
            }
            §§goto(addr003b);
         }
         §§goto(addr013f);
      }
      
      private function _ImprovementUiInfolayerContent_Array1_c() : Array
      {
         return [this._ImprovementUiInfolayerContent_VGroup1_c()];
      }
      
      private function _ImprovementUiInfolayerContent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.maxWidth = 200;
                  if(_loc3_)
                  {
                     _loc1_.paddingLeft = 5;
                     if(!_loc2_)
                     {
                        addr0060:
                        _loc1_.paddingRight = 5;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ImprovementUiInfolayerContent_HGroup1_c(),this._ImprovementUiInfolayerContent_BriskImageDynaLib1_c(),this._ImprovementUiInfolayerContent_List1_i(),this._ImprovementUiInfolayerContent_BriskImageDynaLib2_c(),this._ImprovementUiInfolayerContent_TimerBarComponent1_i(),this._ImprovementUiInfolayerContent_HGroup2_i()];
                           if(_loc3_)
                           {
                              addr00a6:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00b2:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00b6);
                        }
                     }
                     §§goto(addr00a6);
                  }
                  addr00b6:
                  return _loc1_;
               }
               §§goto(addr00b2);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0060);
      }
      
      private function _ImprovementUiInfolayerContent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ImprovementUiInfolayerContent_LocaLabel1_i(),this._ImprovementUiInfolayerContent_LocaLabel2_i()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_)
            {
               _loc1_.styleName = "infoLabelLeft";
               if(!(_loc2_ && _loc3_))
               {
                  addr0049:
                  _loc1_.percentWidth = 50;
                  if(_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0075);
               }
               addr0053:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.id = "qualityLabel";
                  if(!_loc2_)
                  {
                     addr0075:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr008a);
                           }
                        }
                        §§goto(addr0094);
                     }
                  }
                  addr008a:
                  this.qualityLabel = _loc1_;
                  if(!_loc2_)
                  {
                     addr0094:
                     BindingManager.executeBindings(this,"qualityLabel",this.qualityLabel);
                  }
                  §§goto(addr00a1);
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr0049);
         }
         §§goto(addr0094);
      }
      
      private function _ImprovementUiInfolayerContent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 50;
               if(_loc3_)
               {
                  _loc1_.styleName = "infoLabelRight";
                  if(_loc3_)
                  {
                     addr0052:
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr005c:
                        _loc1_.id = "qualityText";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0080:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr0091:
                                    this.qualityText = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"qualityText",this.qualityText);
                                    }
                                 }
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr0091);
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0080);
            }
            §§goto(addr0052);
         }
         addr00a8:
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!(_loc2_ && _loc2_))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005f);
      }
      
      private function _ImprovementUiInfolayerContent_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.itemRenderer = this._ImprovementUiInfolayerContent_ClassFactory1_c();
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.setStyle("skinClass",ImprovementEfficiencyListSkin);
                  if(_loc2_)
                  {
                     _loc1_.id = "efficiencyList";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008a:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00ba);
                           }
                        }
                     }
                     addr00a8:
                     this.efficiencyList = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00ba:
                        BindingManager.executeBindings(this,"efficiencyList",this.efficiencyList);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00ba);
               }
            }
            addr00c7:
            return _loc1_;
         }
         §§goto(addr008a);
      }
      
      private function _ImprovementUiInfolayerContent_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.generator = ImprovementEfficiencyItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0068:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr006c);
            }
            §§goto(addr0068);
         }
         addr006c:
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.showBoostButton = false;
            if(_loc3_ || _loc3_)
            {
               _loc1_.width = 160;
               if(_loc3_ || Boolean(this))
               {
                  addr005c:
                  _loc1_.revertFlow = true;
                  if(!_loc2_)
                  {
                     addr0066:
                     _loc1_.id = "improvementProgressComponent";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a3:
                                 this.improvementProgressComponent = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    BindingManager.executeBindings(this,"improvementProgressComponent",this.improvementProgressComponent);
                                 }
                              }
                           }
                           §§goto(addr00c2);
                        }
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr0066);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _ImprovementUiInfolayerContent_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.paddingLeft = 5;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0043:
                  _loc1_.paddingRight = 5;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ImprovementUiInfolayerContent_BriskImageDynaLib3_c(),this._ImprovementUiInfolayerContent_LocaLabel3_i()];
                        if(_loc2_ || _loc3_)
                        {
                           addr008d:
                           _loc1_.id = "unlimitedGroup";
                           if(_loc2_ || _loc3_)
                           {
                              addr00a0:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00c1:
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00d2:
                                       this.unlimitedGroup = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00dc:
                                          BindingManager.executeBindings(this,"unlimitedGroup",this.unlimitedGroup);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00a0);
                     }
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr008d);
            }
            §§goto(addr00a0);
         }
         §§goto(addr0043);
      }
      
      private function _ImprovementUiInfolayerContent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "timer_clock";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006b);
            }
         }
         addr006f:
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc2_)
            {
               _loc1_.styleName = "epicUnlimitedLabel";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.id = "unlimitedTimeLabel";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0090);
                              }
                              §§goto(addr00a2);
                           }
                        }
                     }
                  }
               }
               addr0090:
               this.unlimitedTimeLabel = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr00a2:
                  BindingManager.executeBindings(this,"unlimitedTimeLabel",this.unlimitedTimeLabel);
               }
               return _loc1_;
            }
            §§goto(addr00a2);
         }
         §§goto(addr006f);
      }
      
      private function _ImprovementUiInfolayerContent_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!_loc2_)
         {
            _loc1_[0] = new Binding(this,null,null,"efficiencyList.maxWidth","maxWidth");
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get efficiencyList() : List
      {
         return this._163328345efficiencyList;
      }
      
      public function set efficiencyList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._163328345efficiencyList;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._163328345efficiencyList = param1;
                  addr0040:
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"efficiencyList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementProgressComponent() : TimerBarComponent
      {
         return this._385971994improvementProgressComponent;
      }
      
      public function set improvementProgressComponent(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385971994improvementProgressComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._385971994improvementProgressComponent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0061:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementProgressComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0070);
                  }
               }
               §§goto(addr0061);
            }
            addr0070:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get qualityLabel() : LocaLabel
      {
         return this._181955275qualityLabel;
      }
      
      public function set qualityLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._181955275qualityLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._181955275qualityLabel = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get qualityText() : LocaLabel
      {
         return this._559815988qualityText;
      }
      
      public function set qualityText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._559815988qualityText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._559815988qualityText = param1;
                  if(!_loc3_)
                  {
                     addr004c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get unlimitedGroup() : HGroup
      {
         return this._2053116446unlimitedGroup;
      }
      
      public function set unlimitedGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2053116446unlimitedGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2053116446unlimitedGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get unlimitedTimeLabel() : LocaLabel
      {
         return this._1554700218unlimitedTimeLabel;
      }
      
      public function set unlimitedTimeLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1554700218unlimitedTimeLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1554700218unlimitedTimeLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedTimeLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
   }
}

