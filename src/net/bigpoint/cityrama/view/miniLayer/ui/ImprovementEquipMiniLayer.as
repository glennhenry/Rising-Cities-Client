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
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementEquipMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovementEquipMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const EQUIP_IMPROVEMENT:String = "EQUIP_IMPROVEMENT";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         EQUIP_IMPROVEMENT = "EQUIP_IMPROVEMENT";
         if(_loc1_ || _loc1_)
         {
            addr0047:
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
         return;
      }
      §§goto(addr0047);
      
      private var _1924622462equipButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2062861329infoComponent:ImprovementInfoMiniLayerComponent;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementEquipMiniLayer()
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
         if(_loc4_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0040:
                     §§pop().§§slot[5] = null;
                     if(_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc3_)
                           {
                              addr0069:
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    super();
                                    if(_loc4_ || _loc1_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§pop().§§slot[1] = this._ImprovementEquipMiniLayer_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                addr00d1:
                                                §§push(§§newactivation());
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         addr0103:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            addr010e:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr0137:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_ImprovementEquipMiniLayerWatcherSetupUtil");
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr0153:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           addr0162:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0178:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovementEquipMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    addr01c4:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01eb:
                                                                                       this.width = 540;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01f6:
                                                                                          this.height = 313;
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr0201);
                                                                                          }
                                                                                          §§goto(addr0221);
                                                                                       }
                                                                                       §§goto(addr020c);
                                                                                    }
                                                                                    §§goto(addr0221);
                                                                                 }
                                                                                 addr0201:
                                                                                 this.showAttentionSign = true;
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr020c:
                                                                                    this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementEquipMiniLayer_Array1_c);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0223:
                                                                                       i = 0;
                                                                                       addr0221:
                                                                                    }
                                                                                 }
                                                                                 var _temp_16:*;
                                                                                 loop0:
                                                                                 do
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
                                                                                          while(§§pop() < §§pop().§§slot[1].length)
                                                                                          {
                                                                                             Binding(bindings[i]).execute();
                                                                                             if(_loc3_ && _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[4]);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(uint(§§pop() + 1));
                                                                                                   if(!(_loc4_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !_loc3_);
                                                                                 
                                                                                 return;
                                                                              }
                                                                              §§goto(addr020c);
                                                                           }
                                                                           §§goto(addr01eb);
                                                                        }
                                                                        §§goto(addr0223);
                                                                     }
                                                                     §§goto(addr020c);
                                                                  }
                                                                  §§goto(addr0162);
                                                               }
                                                               §§goto(addr0221);
                                                            }
                                                            §§goto(addr0178);
                                                         }
                                                         §§goto(addr01f6);
                                                      }
                                                      §§goto(addr0137);
                                                   }
                                                   §§goto(addr01eb);
                                                }
                                                §§goto(addr0103);
                                             }
                                             §§goto(addr01c4);
                                          }
                                          §§goto(addr0162);
                                       }
                                       §§goto(addr0178);
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr0221);
                              }
                              §§goto(addr0153);
                           }
                           §§goto(addr0221);
                        }
                     }
                     §§goto(addr0069);
                  }
                  §§goto(addr0162);
               }
               §§goto(addr010e);
            }
            §§goto(addr0040);
         }
         §§goto(addr0162);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            ImprovementEquipMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0042);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0042:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
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
         if(_loc2_ || Boolean(_loc1_))
         {
            super.commitProperties();
            if(_loc2_)
            {
               title = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.equip.title.capital"));
               if(!(_loc3_ && _loc2_))
               {
                  addr005c:
                  this.flavourText.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.equip.flavour"));
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(this.equipButton);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§push(ResourceManager.getInstance());
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.equip.btn.equip.capital")));
                           if(!_loc3_)
                           {
                              §§pop().label = §§pop();
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0103:
                                 this.equipButton.toolTip = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.equip.btn.equip.tooltip"));
                                 addr00ee:
                                 addr00e8:
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr0112:
                                    §§push(Boolean(this._data));
                                    if(_loc2_ || Boolean(this))
                                    {
                                       var _temp_9:* = §§pop();
                                       §§push(_temp_9);
                                       if(_temp_9)
                                       {
                                          if(_loc2_ || Boolean(_loc1_))
                                          {
                                             §§pop();
                                             if(_loc2_)
                                             {
                                                §§goto(addr014e);
                                             }
                                             §§goto(addr015f);
                                          }
                                       }
                                       addr014e:
                                       §§goto(addr013c);
                                    }
                                    §§goto(addr014d);
                                 }
                                 §§goto(addr0164);
                              }
                              addr013c:
                              §§push(this._isDirty);
                              if(_loc2_ || _loc2_)
                              {
                                 addr014d:
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr015f:
                                    this._isDirty = false;
                                 }
                                 addr0164:
                                 _loc1_ = new ImprovementInfoMiniLayerComponentVo();
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    _loc1_.state = ImprovementInfoMiniLayerComponentVo.STATE_NEW;
                                    if(!_loc3_)
                                    {
                                       addr0198:
                                       _loc1_.improvementVo = this._data.improvementVo;
                                       if(!_loc3_)
                                       {
                                          this.infoComponent.data = _loc1_;
                                       }
                                    }
                                    §§goto(addr01af);
                                 }
                                 §§goto(addr0198);
                              }
                              addr01af:
                              return;
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr00ee);
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr0112);
               }
            }
            §§goto(addr015f);
         }
         §§goto(addr005c);
      }
      
      public function set data(param1:ImprovementMiniLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_)
               {
                  this._data = param1;
                  if(!_loc3_)
                  {
                     this._isDirty = true;
                     if(!_loc3_)
                     {
                        addr004d:
                        invalidateProperties();
                     }
                     §§goto(addr0052);
                  }
                  §§goto(addr004d);
               }
            }
         }
         addr0052:
      }
      
      private function handleEquip() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            dispatchEvent(new Event(EQUIP_IMPROVEMENT,true));
         }
      }
      
      private function _ImprovementEquipMiniLayer_Array1_c() : Array
      {
         return [this._ImprovementEquipMiniLayer_VGroup1_c(),this._ImprovementEquipMiniLayer_UiInfolayerAlignmentLine1_i()];
      }
      
      private function _ImprovementEquipMiniLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0052);
               }
               §§goto(addr00ae);
            }
            addr0052:
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "top";
               if(!_loc2_)
               {
                  addr006e:
                  _loc1_.gap = -11;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._ImprovementEquipMiniLayer_HGroup1_c(),this._ImprovementEquipMiniLayer_ImprovementInfoMiniLayerComponent1_i(),this._ImprovementEquipMiniLayer_Group1_c(),this._ImprovementEquipMiniLayer_HGroup2_c()];
                     if(!_loc2_)
                     {
                        §§goto(addr00ae);
                     }
                     §§goto(addr00ba);
                  }
               }
               addr00ae:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr00ba:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00be);
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _ImprovementEquipMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 90;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.height = 50;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ImprovementEquipMiniLayer_LocaLabel1_i()];
                        if(_loc2_)
                        {
                           addr008d:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr008d);
            }
         }
         §§goto(addr00a1);
      }
      
      private function _ImprovementEquipMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc2_)
                  {
                     §§goto(addr005e);
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr00ad);
         }
         addr005e:
         _loc1_.id = "flavourText";
         if(_loc2_ || Boolean(this))
         {
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr009b);
                  }
               }
               §§goto(addr00ad);
            }
            addr009b:
            this.flavourText = _loc1_;
            if(!(_loc3_ && Boolean(this)))
            {
               addr00ad:
               BindingManager.executeBindings(this,"flavourText",this.flavourText);
            }
            §§goto(addr00ba);
         }
         addr00ba:
         return _loc1_;
      }
      
      private function _ImprovementEquipMiniLayer_ImprovementInfoMiniLayerComponent1_i() : ImprovementInfoMiniLayerComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImprovementInfoMiniLayerComponent = new ImprovementInfoMiniLayerComponent();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.id = "infoComponent";
            if(!(_loc2_ && _loc2_))
            {
               addr004d:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr006e:
                        this.infoComponent = _loc1_;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0080:
                           BindingManager.executeBindings(this,"infoComponent",this.infoComponent);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr006e);
            }
            addr008d:
            return _loc1_;
         }
         §§goto(addr004d);
      }
      
      private function _ImprovementEquipMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 16;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0045:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _ImprovementEquipMiniLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.gap = 14;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ImprovementEquipMiniLayer_MultistateButton1_i()];
                     §§goto(addr0052);
                  }
               }
               §§goto(addr008a);
            }
            addr0052:
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr008a:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr008a);
      }
      
      private function _ImprovementEquipMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 204;
            if(_loc3_)
            {
               _loc1_.styleName = "confirm";
               if(_loc3_)
               {
                  _loc1_.imageNameLeft = "icon_check";
                  if(_loc3_)
                  {
                     _loc1_.libNameLeft = "gui_popups_miniLayer";
                     if(_loc3_)
                     {
                        _loc1_.addEventListener("click",this.__equipButton_click);
                        addr004f:
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.id = "equipButton";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0086:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00a5);
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00ae);
                           }
                           addr00a5:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr00ae:
                              this.equipButton = _loc1_;
                              if(_loc3_)
                              {
                                 addr00b8:
                                 BindingManager.executeBindings(this,"equipButton",this.equipButton);
                              }
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr0086);
                     }
                  }
                  addr00c5:
                  return _loc1_;
               }
               §§goto(addr00a5);
            }
            §§goto(addr004f);
         }
         §§goto(addr0086);
      }
      
      public function __equipButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleEquip();
         }
      }
      
      private function _ImprovementEquipMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_)
         {
            _loc1_.left = 60;
            if(_loc3_)
            {
               _loc1_.top = 58;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.right = 315;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "uiInfolayerAlignmentLine";
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr007b:
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0099:
                                 this.uiInfolayerAlignmentLine = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00ab:
                                    BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0099);
            }
            §§goto(addr00ab);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _ImprovementEquipMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                        },null,"uiInfolayerAlignmentLine.alignment");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§goto(addr007c);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0098);
            }
            §§goto(addr0096);
         }
         addr007c:
         §§push(§§pop().§§slot[1]);
         if(_loc3_)
         {
            addr0085:
            §§pop()[1] = new Binding(this,function():uint
            {
               return ImprovementEquipMiniLayerMediator.LINE_ID_0;
            },null,"uiInfolayerAlignmentLine.lineId");
            addr0098:
            addr0096:
            §§push(result);
            addr0083:
         }
         return §§pop();
      }
      
      [Bindable(event="propertyChange")]
      public function get equipButton() : MultistateButton
      {
         return this._1924622462equipButton;
      }
      
      public function set equipButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1924622462equipButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1924622462equipButton = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0070);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipButton",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._800887486flavourText = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr005b);
            }
            addr007a:
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoComponent() : ImprovementInfoMiniLayerComponent
      {
         return this._2062861329infoComponent;
      }
      
      public function set infoComponent(param1:ImprovementInfoMiniLayerComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2062861329infoComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2062861329infoComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
         }
         addr0071:
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  addr0036:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0036);
      }
   }
}

