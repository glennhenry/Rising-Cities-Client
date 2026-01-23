package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.SeparatorItemRenderer;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class NeedsItemRenderer extends SeparatorItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _NeedsItemRenderer_BriskImageDynaLib4:BriskImageDynaLib;
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _607253902frameBG:BriskImageDynaLib;
      
      private var _1484033980goodContainer:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _1478417739itemAmount:LocaLabel;
      
      private var _717437366sellAmount:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ResidentialNeedVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NeedsItemRenderer()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc4_ && _loc3_))
         {
            §§push(null);
            if(!(_loc4_ && _loc2_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     addr0047:
                     §§pop().§§slot[5] = null;
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_ || _loc2_)
                        {
                           addr0063:
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 addr0082:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._NeedsItemRenderer_bindingsSetup();
                                             if(_loc3_)
                                             {
                                                addr00bf:
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   addr00c6:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      addr00d2:
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr00e1:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_)
                                                         {
                                                            addr00eb:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_NeedsItemRendererWatcherSetupUtil");
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr0137:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr014e:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return NeedsItemRenderer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr0198:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01be:
                                                                                       this.autoDrawBackground = false;
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          addr01d0:
                                                                                          this.mxmlContent = [this._NeedsItemRenderer_HGroup1_c()];
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             addr01e9:
                                                                                             this.addEventListener("creationComplete",this.___NeedsItemRenderer_SeparatorItemRenderer1_creationComplete);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr01fd:
                                                                                                i = 0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       var _temp_12:*;
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
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc4_ && Boolean(this)))
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(var _temp_12:* = §§pop(), §§pop().§§slot[4] = _temp_12, !_loc4_);
                                                                                       
                                                                                       return;
                                                                                       addr026d:
                                                                                    }
                                                                                    §§goto(addr01d0);
                                                                                 }
                                                                                 §§goto(addr01be);
                                                                              }
                                                                              §§goto(addr01e9);
                                                                           }
                                                                           §§goto(addr01be);
                                                                        }
                                                                        §§goto(addr01fd);
                                                                     }
                                                                     §§goto(addr01d0);
                                                                  }
                                                                  §§goto(addr0137);
                                                               }
                                                               §§goto(addr026d);
                                                            }
                                                            §§goto(addr014e);
                                                         }
                                                         §§goto(addr01e9);
                                                      }
                                                      §§goto(addr01fd);
                                                   }
                                                   §§goto(addr026d);
                                                }
                                                §§goto(addr00e1);
                                             }
                                             §§goto(addr0198);
                                          }
                                          §§goto(addr0137);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr01d0);
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00eb);
                           }
                           §§goto(addr00bf);
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr0063);
            }
            §§goto(addr0047);
         }
         §§goto(addr00c6);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            NeedsItemRenderer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  addr0049:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0043:
            return;
         }
         §§goto(addr0049);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            invalidateProperties();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._data = param1 as ResidentialNeedVo;
            if(!_loc2_)
            {
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.commitProperties();
            if(_loc2_)
            {
               §§push(this._data);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(this.image);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this._data);
                           if(!_loc1_)
                           {
                              §§pop().dynaBmpSourceName = §§pop().assetImageName;
                              if(!_loc1_)
                              {
                                 §§push(this.image);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr0073:
                                    §§pop().dynaLibName = this._data.assetLibName;
                                    if(!_loc1_)
                                    {
                                       addr007d:
                                       §§push(this.itemAmount);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(this._data.stockAmount + " / ");
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(this._data.maxAmount);
                                             if(!(_loc1_ && Boolean(this)))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc2_)
                                                {
                                                   §§pop().text = §§pop();
                                                   if(!_loc1_)
                                                   {
                                                      this.sellAmount.text = Math.abs(this._data.requiredAmount) + "x";
                                                      addr00c7:
                                                      if(_loc2_)
                                                      {
                                                         addr00f1:
                                                         addr00ed:
                                                         if(this._data.stockAmount > 0)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               §§push(this.checkMark);
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  §§push("checkmark_green_small");
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§pop().dynaBmpSourceName = §§pop();
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        addr012f:
                                                                        §§push(this.frameBG);
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           §§push("needframe_bg_green");
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              §§pop().dynaBmpSourceName = §§pop();
                                                                              if(!_loc1_)
                                                                              {
                                                                                 addr0157:
                                                                                 §§push(this.image);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr0160:
                                                                                    §§pop().alpha = 1;
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§push(this.itemAmount);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push("color");
                                                                                          if(!(_loc1_ && Boolean(this)))
                                                                                          {
                                                                                             addr0183:
                                                                                             §§push(7303023);
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                §§pop().setStyle(§§pop(),§§pop());
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   addr01c8:
                                                                                                   this.image.alpha = 0.5;
                                                                                                   addr01c4:
                                                                                                   if(_loc2_ || _loc1_)
                                                                                                   {
                                                                                                      addr01e3:
                                                                                                      this.itemAmount.setStyle("color",7303023);
                                                                                                      addr01e1:
                                                                                                      addr01de:
                                                                                                      addr01da:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr01e6);
                                                                                             }
                                                                                             §§goto(addr01e3);
                                                                                          }
                                                                                          §§goto(addr01e1);
                                                                                       }
                                                                                       §§goto(addr01de);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr01bd:
                                                                                       this.frameBG.dynaBmpSourceName = "needframe_bg_grey";
                                                                                       addr01b6:
                                                                                       addr01ba:
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          §§goto(addr01c4);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01da);
                                                                                 }
                                                                                 §§goto(addr01c8);
                                                                              }
                                                                              §§goto(addr01b6);
                                                                           }
                                                                           §§goto(addr01bd);
                                                                        }
                                                                        §§goto(addr01ba);
                                                                     }
                                                                     §§goto(addr0157);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01a5:
                                                                     §§pop().dynaBmpSourceName = §§pop();
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§goto(addr01b6);
                                                                     }
                                                                  }
                                                                  §§goto(addr01da);
                                                               }
                                                               else
                                                               {
                                                                  addr01a2:
                                                                  §§push("checkmark_grey_small");
                                                               }
                                                               §§goto(addr01a5);
                                                            }
                                                            §§goto(addr01da);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.checkMark);
                                                         }
                                                         §§goto(addr01a2);
                                                      }
                                                      §§goto(addr012f);
                                                   }
                                                   §§goto(addr01e6);
                                                }
                                                §§goto(addr0183);
                                             }
                                             §§goto(addr01e3);
                                          }
                                          §§goto(addr0183);
                                       }
                                       §§goto(addr01de);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr01c8);
                              }
                              §§goto(addr01e6);
                           }
                           §§goto(addr0073);
                        }
                        §§goto(addr0160);
                     }
                     §§goto(addr007d);
                  }
                  addr01e6:
                  return;
               }
               §§goto(addr00f1);
            }
         }
         §§goto(addr00ed);
      }
      
      private function _NeedsItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.maxHeight = 83;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._NeedsItemRenderer_VGroup1_c(),this._NeedsItemRenderer_BriskImageDynaLib4_i()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
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
      
      private function _NeedsItemRenderer_VGroup1_c() : VGroup
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
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.maxHeight = 83;
                  if(_loc2_)
                  {
                     _loc1_.gap = 5;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._NeedsItemRenderer_LocaLabel1_i(),this._NeedsItemRenderer_Group1_i(),this._NeedsItemRenderer_LocaLabel2_i()];
                        §§goto(addr0067);
                     }
                     §§goto(addr00ac);
                  }
                  addr0067:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0098:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr00ac:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00ac);
            }
            §§goto(addr0098);
         }
         §§goto(addr00ac);
      }
      
      private function _NeedsItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "sellAmountLabel";
            if(!_loc3_)
            {
               _loc1_.id = "sellAmount";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           addr0072:
                           this.sellAmount = _loc1_;
                           if(!_loc3_)
                           {
                              addr007c:
                              BindingManager.executeBindings(this,"sellAmount",this.sellAmount);
                           }
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007c);
            }
         }
         addr0089:
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.left = 0;
            if(_loc3_)
            {
               addr0029:
               _loc1_.width = 60;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.height = 52;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._NeedsItemRenderer_BriskImageDynaLib1_i(),this._NeedsItemRenderer_BriskImageDynaLib2_i(),this._NeedsItemRenderer_BriskImageDynaLib3_i()];
                     if(_loc3_)
                     {
                        _loc1_.id = "goodContainer";
                        if(!_loc2_)
                        {
                           addr0080:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00a0:
                                    this.goodContainer = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00b2:
                                       BindingManager.executeBindings(this,"goodContainer",this.goodContainer);
                                    }
                                 }
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00a0);
                  }
                  addr00bf:
                  return _loc1_;
               }
               §§goto(addr00a0);
            }
            §§goto(addr0080);
         }
         §§goto(addr0029);
      }
      
      private function _NeedsItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "needframe_bg_grey";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr00a5);
               }
               addr0054:
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0066:
                  _loc1_.id = "frameBG";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0086:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr009b);
                           }
                        }
                        §§goto(addr00a5);
                     }
                     addr009b:
                     this.frameBG = _loc1_;
                     if(_loc3_)
                     {
                        addr00a5:
                        BindingManager.executeBindings(this,"frameBG",this.frameBG);
                     }
                     §§goto(addr00b2);
                  }
               }
               addr00b2:
               return _loc1_;
            }
            §§goto(addr0086);
         }
         §§goto(addr0066);
      }
      
      private function _NeedsItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  addr003d:
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     addr0047:
                     _loc1_.maxWidth = 60;
                     if(!_loc2_)
                     {
                        _loc1_.maxHeight = 52;
                        if(_loc3_)
                        {
                           addr0068:
                           _loc1_.smoothing = true;
                           if(_loc3_)
                           {
                              addr0072:
                              _loc1_.maintainAspectRation = true;
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.id = "image";
                                 if(_loc3_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr009b:
                                          _loc1_.document = this;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr00ba:
                                             this.image = _loc1_;
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr00cc:
                                                BindingManager.executeBindings(this,"image",this.image);
                                             }
                                             §§goto(addr00d9);
                                          }
                                          §§goto(addr00cc);
                                       }
                                       §§goto(addr00d9);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr00cc);
                        }
                        addr00d9:
                        return _loc1_;
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0068);
            }
            §§goto(addr003d);
         }
         §§goto(addr0047);
      }
      
      private function _NeedsItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_grey_small";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.top = 0;
                  addr0044:
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.right = 0;
                     if(!_loc3_)
                     {
                        _loc1_.id = "checkMark";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr008e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00a3:
                                    this.checkMark = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00ad:
                                       BindingManager.executeBindings(this,"checkMark",this.checkMark);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00ad);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00a3);
                        }
                        addr00ba:
                        return _loc1_;
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr00a3);
            }
            §§goto(addr009a);
         }
         §§goto(addr0044);
      }
      
      private function _NeedsItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "priceLabel";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.id = "itemAmount";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0082);
                        }
                     }
                     §§goto(addr0094);
                  }
                  addr0082:
                  this.itemAmount = _loc1_;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0094:
                     BindingManager.executeBindings(this,"itemAmount",this.itemAmount);
                  }
                  §§goto(addr00a1);
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr0094);
         }
         §§goto(addr0082);
      }
      
      private function _NeedsItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "good_divider";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 5;
                  if(_loc2_)
                  {
                     _loc1_.height = 83;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0075:
                        _loc1_.id = "_NeedsItemRenderer_BriskImageDynaLib4";
                        if(_loc2_)
                        {
                           §§goto(addr0080);
                        }
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0075);
            }
            addr0080:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0096:
                  _loc1_.document = this;
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr00a7);
                  }
               }
               §§goto(addr00b1);
            }
            addr00a7:
            this._NeedsItemRenderer_BriskImageDynaLib4 = _loc1_;
            if(!_loc3_)
            {
               addr00b1:
               BindingManager.executeBindings(this,"_NeedsItemRenderer_BriskImageDynaLib4",this._NeedsItemRenderer_BriskImageDynaLib4);
            }
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      public function ___NeedsItemRenderer_SeparatorItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _NeedsItemRenderer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§goto(addr002f);
               }
               §§goto(addr00a8);
            }
            §§goto(addr007d);
         }
         addr002f:
         §§push(§§pop().§§slot[1]);
         if(!(_loc2_ && _loc1_))
         {
            §§push(0);
            if(!(_loc2_ && _loc1_))
            {
               §§pop()[§§pop()] = new Binding(this,function():Boolean
               {
                  return this.showSeparator;
               },null,"_NeedsItemRenderer_BriskImageDynaLib4.visible");
               if(!_loc2_)
               {
                  addr007d:
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§goto(addr00aa);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr00a6);
            }
            §§goto(addr0095);
         }
         addr00aa:
         §§push(§§pop().§§slot[1]);
         if(_loc3_ || _loc3_)
         {
            addr0095:
            §§pop()[1] = new Binding(this,function():Boolean
            {
               return this.showSeparator;
            },null,"_NeedsItemRenderer_BriskImageDynaLib4.includeInLayout");
            addr00a8:
            addr00a6:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMark() : BriskImageDynaLib
      {
         return this._398367733checkMark;
      }
      
      public function set checkMark(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._398367733checkMark;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004d:
                  this._398367733checkMark = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get frameBG() : BriskImageDynaLib
      {
         return this._607253902frameBG;
      }
      
      public function set frameBG(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._607253902frameBG;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._607253902frameBG = param1;
                  addr0040:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frameBG",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get goodContainer() : Group
      {
         return this._1484033980goodContainer;
      }
      
      public function set goodContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1484033980goodContainer;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1484033980goodContainer = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100313435image;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._100313435image = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                     §§goto(addr008d);
                  }
               }
               §§goto(addr007e);
            }
            addr008d:
            return;
         }
         §§goto(addr007e);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmount() : LocaLabel
      {
         return this._1478417739itemAmount;
      }
      
      public function set itemAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1478417739itemAmount;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1478417739itemAmount = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmount",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get sellAmount() : LocaLabel
      {
         return this._717437366sellAmount;
      }
      
      public function set sellAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._717437366sellAmount;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._717437366sellAmount = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellAmount",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
   }
}

