package net.bigpoint.cityrama.view.miniLayer.ui
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementInfoMiniLayerComponentVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementClickInfoMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovementClickInfoMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const FEATURE_IMPROVEMENT:String = "FEATURE_IMPROVEMENT";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || ImprovementClickInfoMiniLayer)
      {
         FEATURE_IMPROVEMENT = "FEATURE_IMPROVEMENT";
         if(_loc2_ || ImprovementClickInfoMiniLayer)
         {
            _skinParts = {
               "moveArea":false,
               "sparkle":false,
               "closeButton":false,
               "controlBarGroup":false,
               "attentionSign":false,
               "contentGroup":false,
               "titleDisplay":false
            };
         }
      }
      
      private var _1905467180featureScreenButton:DynamicImageButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2062861329infoComponent:ImprovementInfoMiniLayerComponent;
      
      private var _1641788370okButton:MultistateButton;
      
      private var _1339123498removeButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementClickInfoMiniLayer()
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
         if(_loc4_ || _loc3_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr003e:
                     §§pop().§§slot[5] = null;
                     if(_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!(_loc3_ && _loc1_))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 addr0072:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    super();
                                    if(_loc4_ || _loc1_)
                                    {
                                       mx_internal::_document = this;
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§pop().§§slot[1] = this._ImprovementClickInfoMiniLayer_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                addr00c8:
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      addr00da:
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr00fc:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr0120:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_ImprovementClickInfoMiniLayerWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        addr013f:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0146:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              addr0165:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovementClickInfoMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr0183:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    addr01b2:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01d9:
                                                                                       this.width = 540;
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          addr01ec:
                                                                                          this.height = 313;
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             addr01ff:
                                                                                             this.showAttentionSign = true;
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr0209:
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementClickInfoMiniLayer_Array1_c);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0221:
                                                                                                   i = 0;
                                                                                                }
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
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(_loc4_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(!(_loc4_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         var _temp_25:* = §§pop();
                                                                                                         §§pop().§§slot[4] = _temp_25;
                                                                                                         if(!_loc3_)
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
                                                                                       addr0292:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01ff);
                                                                              }
                                                                              §§goto(addr01b2);
                                                                           }
                                                                           §§goto(addr0183);
                                                                        }
                                                                        §§goto(addr0221);
                                                                     }
                                                                     §§goto(addr01ec);
                                                                  }
                                                                  §§goto(addr0146);
                                                               }
                                                               §§goto(addr0209);
                                                            }
                                                            §§goto(addr0165);
                                                         }
                                                         §§goto(addr01d9);
                                                      }
                                                      §§goto(addr0146);
                                                   }
                                                   §§goto(addr013f);
                                                }
                                                §§goto(addr0146);
                                             }
                                             §§goto(addr00fc);
                                          }
                                          §§goto(addr0146);
                                       }
                                       §§goto(addr00c8);
                                    }
                                    §§goto(addr01d9);
                                 }
                                 §§goto(addr0292);
                              }
                              §§goto(addr0183);
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr0183);
                     }
                     §§goto(addr01ff);
                  }
                  §§goto(addr0120);
               }
               §§goto(addr0072);
            }
            §§goto(addr003e);
         }
         §§goto(addr0221);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            ImprovementClickInfoMiniLayer._watcherSetupUtil = param1;
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
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr003e);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0052);
            }
            addr003e:
            return;
         }
         addr0052:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImprovementInfoMiniLayerComponentVo = null;
         if(_loc2_)
         {
            super.commitProperties();
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§push(Boolean(this._data));
               if(_loc2_ || _loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr006b);
                        }
                        §§goto(addr0074);
                     }
                  }
               }
               addr006b:
               §§push(this._isDirty);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0074:
                     this._isDirty = false;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0086:
                        title = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.info.title.capital"));
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr00be:
                           this.flavourText.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.info.flavour"));
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§push(this.okButton);
                              if(_loc2_)
                              {
                                 §§push(ResourceManager.getInstance());
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.info.btn.ok.capital")));
                                    if(!_loc3_)
                                    {
                                       §§pop().label = §§pop();
                                       if(!_loc3_)
                                       {
                                          addr0141:
                                          this.okButton.toolTip = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.info.btn.ok.tooltip"));
                                          addr012c:
                                          addr0126:
                                          addr0122:
                                       }
                                       §§goto(addr0143);
                                    }
                                    §§goto(addr0141);
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr0126);
                           }
                        }
                        §§goto(addr0122);
                     }
                     addr0143:
                     _loc1_ = new ImprovementInfoMiniLayerComponentVo();
                     if(_loc2_)
                     {
                        _loc1_.state = ImprovementInfoMiniLayerComponentVo.STATE_RUNNING;
                        if(!_loc3_)
                        {
                           _loc1_.currentTime = this._data.currentTime;
                           if(_loc2_)
                           {
                              _loc1_.improvementVo = this._data.improvementVo;
                              if(_loc2_)
                              {
                                 addr018e:
                                 this.infoComponent.data = _loc1_;
                                 if(_loc2_)
                                 {
                                    this.featureScreenButton.toolTip = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.info.btn.feature.tooltip"));
                                 }
                              }
                              §§goto(addr01bb);
                           }
                           §§goto(addr018e);
                        }
                     }
                     §§goto(addr01bb);
                  }
                  §§goto(addr00be);
               }
               addr01bb:
               return;
            }
            §§goto(addr0122);
         }
         §§goto(addr0086);
      }
      
      private function handleOKClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            dispatchEvent(new Event(Event.CLOSE,true));
         }
      }
      
      private function handleRemoveClick() : void
      {
      }
      
      private function handleFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event(FEATURE_IMPROVEMENT,true));
         }
      }
      
      public function set data(param1:ImprovementMiniLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc3_ && _loc2_))
               {
                  this._data = param1;
                  if(_loc2_ || Boolean(param1))
                  {
                     addr0060:
                     this._isDirty = true;
                     if(!(_loc3_ && _loc2_))
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0060);
      }
      
      private function _ImprovementClickInfoMiniLayer_Array1_c() : Array
      {
         return [this._ImprovementClickInfoMiniLayer_VGroup1_c(),this._ImprovementClickInfoMiniLayer_DynamicImageButton1_i(),this._ImprovementClickInfoMiniLayer_UiInfolayerAlignmentLine1_i()];
      }
      
      private function _ImprovementClickInfoMiniLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0029:
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.verticalAlign = "top";
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr008c);
                  }
                  addr006c:
                  _loc1_.gap = -11;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr008c:
                     _loc1_.mxmlContent = [this._ImprovementClickInfoMiniLayer_HGroup1_c(),this._ImprovementClickInfoMiniLayer_ImprovementInfoMiniLayerComponent1_i(),this._ImprovementClickInfoMiniLayer_Group1_c(),this._ImprovementClickInfoMiniLayer_HGroup2_c()];
                     if(_loc2_)
                     {
                        addr00ae:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr008c);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0029);
      }
      
      private function _ImprovementClickInfoMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr003d);
            }
            §§goto(addr008c);
         }
         addr003d:
         _loc1_.height = 50;
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr0066);
            }
            §§goto(addr0080);
         }
         addr0066:
         _loc1_.horizontalAlign = "center";
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._ImprovementClickInfoMiniLayer_LocaLabel1_i()];
            if(_loc2_)
            {
               addr0080:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr008c:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementClickInfoMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(_loc3_)
               {
                  addr0054:
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.id = "flavourText";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr008c:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr009d:
                                 this.flavourText = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a7:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00a7);
                           }
                           addr00b4:
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr009d);
               }
               §§goto(addr008c);
            }
            §§goto(addr00a7);
         }
         §§goto(addr0054);
      }
      
      private function _ImprovementClickInfoMiniLayer_ImprovementInfoMiniLayerComponent1_i() : ImprovementInfoMiniLayerComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImprovementInfoMiniLayerComponent = new ImprovementInfoMiniLayerComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.id = "infoComponent";
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr0075);
                     }
                     §§goto(addr007f);
                  }
               }
               addr0075:
               this.infoComponent = _loc1_;
               if(!_loc2_)
               {
                  addr007f:
                  BindingManager.executeBindings(this,"infoComponent",this.infoComponent);
               }
               §§goto(addr008c);
            }
         }
         addr008c:
         return _loc1_;
      }
      
      private function _ImprovementClickInfoMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 16;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0043:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0043);
      }
      
      private function _ImprovementClickInfoMiniLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc3_))
            {
               addr0055:
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ImprovementClickInfoMiniLayer_MultistateButton1_i(),this._ImprovementClickInfoMiniLayer_MultistateButton2_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
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
            addr0085:
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _ImprovementClickInfoMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 204;
            if(!_loc3_)
            {
               _loc1_.styleName = "abort";
               if(!_loc3_)
               {
                  _loc1_.imageNameLeft = "icon_cancel";
                  if(_loc2_)
                  {
                     _loc1_.libNameLeft = "gui_popups_miniLayer";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.includeInLayout = false;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.visible = false;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.addEventListener("click",this.__removeButton_click);
                              if(!_loc3_)
                              {
                                 addr009d:
                                 _loc1_.id = "removeButton";
                                 if(_loc2_)
                                 {
                                    addr00a8:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00c9:
                                          _loc1_.document = this;
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr00da:
                                             this.removeButton = _loc1_;
                                             if(!_loc3_)
                                             {
                                                addr00e4:
                                                BindingManager.executeBindings(this,"removeButton",this.removeButton);
                                             }
                                          }
                                       }
                                       return _loc1_;
                                    }
                                    §§goto(addr00da);
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr009d);
                        }
                     }
                     §§goto(addr00a8);
                  }
               }
               §§goto(addr00da);
            }
            §§goto(addr00c9);
         }
         §§goto(addr00e4);
      }
      
      public function __removeButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleRemoveClick();
         }
      }
      
      private function _ImprovementClickInfoMiniLayer_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.width = 204;
            if(_loc2_)
            {
               addr0029:
               _loc1_.styleName = "confirm";
               if(!_loc3_)
               {
                  _loc1_.addEventListener("click",this.__okButton_click);
                  if(!_loc3_)
                  {
                     _loc1_.id = "okButton";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr0074);
                           }
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr007d);
               }
               addr0074:
               _loc1_.document = this;
               if(!_loc3_)
               {
                  addr007d:
                  this.okButton = _loc1_;
                  if(_loc2_)
                  {
                     addr0087:
                     BindingManager.executeBindings(this,"okButton",this.okButton);
                  }
               }
               §§goto(addr0094);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr0029);
      }
      
      public function __okButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleOKClick();
         }
      }
      
      private function _ImprovementClickInfoMiniLayer_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc3_ || _loc3_)
            {
               _loc1_.right = 24;
               if(!_loc2_)
               {
                  _loc1_.top = 55;
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__featureScreenButton_click);
                     if(_loc3_)
                     {
                        addr0063:
                        _loc1_.id = "featureScreenButton";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0076:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0095:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00a6:
                                    this.featureScreenButton = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00b0:
                                       BindingManager.executeBindings(this,"featureScreenButton",this.featureScreenButton);
                                    }
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr0076);
                  }
                  addr00bd:
                  return _loc1_;
               }
               §§goto(addr0095);
            }
            §§goto(addr00b0);
         }
         §§goto(addr0063);
      }
      
      public function __featureScreenButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.handleFeatureClick();
         }
      }
      
      private function _ImprovementClickInfoMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!_loc3_)
         {
            _loc1_.left = 60;
            if(_loc2_ || _loc3_)
            {
               _loc1_.top = 58;
               if(_loc2_)
               {
                  _loc1_.right = 315;
                  if(!_loc3_)
                  {
                     addr0056:
                     _loc1_.id = "uiInfolayerAlignmentLine";
                     if(_loc2_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0078:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr0081);
                              }
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0078);
               }
               addr0081:
               this.uiInfolayerAlignmentLine = _loc1_;
               if(_loc2_)
               {
                  addr008b:
                  BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
               }
               return _loc1_;
            }
            §§goto(addr006c);
         }
         §§goto(addr0056);
      }
      
      private function _ImprovementClickInfoMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                        },null,"uiInfolayerAlignmentLine.alignment");
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr00b3);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr009e);
                  }
                  addr00b3:
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     addr009e:
                     §§pop()[1] = new Binding(this,function():uint
                     {
                        return ImprovementClickInfoMiniLayerMediator.LINE_ID_0;
                     },null,"uiInfolayerAlignmentLine.lineId");
                     addr00b1:
                     addr00af:
                     return result;
                  }
               }
               §§goto(addr00b1);
            }
            §§goto(addr00af);
         }
         §§goto(addr00b1);
      }
      
      [Bindable(event="propertyChange")]
      public function get featureScreenButton() : DynamicImageButton
      {
         return this._1905467180featureScreenButton;
      }
      
      public function set featureScreenButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1905467180featureScreenButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1905467180featureScreenButton = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureScreenButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0058);
            }
            addr0076:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoComponent() : ImprovementInfoMiniLayerComponent
      {
         return this._2062861329infoComponent;
      }
      
      public function set infoComponent(param1:ImprovementInfoMiniLayerComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2062861329infoComponent;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0054:
                  this._2062861329infoComponent = param1;
                  if(!_loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005e);
            }
            addr007c:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1641788370okButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1641788370okButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0074);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get removeButton() : MultistateButton
      {
         return this._1339123498removeButton;
      }
      
      public function set removeButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1339123498removeButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr004c:
                  this._1339123498removeButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006e);
      }
   }
}

