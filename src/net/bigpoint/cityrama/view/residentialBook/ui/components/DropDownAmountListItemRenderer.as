package net.bigpoint.cityrama.view.residentialBook.ui.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.DropDownAmountListItemVo;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class DropDownAmountListItemRenderer extends ItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1229015684amountLabel:LocaLabel;
      
      private var _320749718categoryLabel:LocaLabel;
      
      private var _1671708693labelGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:DropDownAmountListItemVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DropDownAmountListItemRenderer()
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
         if(_loc4_ || _loc1_)
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc2_)
                  {
                     addr004d:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc1_))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc2_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc3_)
                                 {
                                    super();
                                    if(_loc4_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._DropDownAmountListItemRenderer_bindingsSetup();
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc3_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  addr010f:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr0116:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_residentialBook_ui_components_DropDownAmountListItemRendererWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              addr0165:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return DropDownAmountListItemRenderer[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0180:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.autoDrawBackground = false;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01df:
                                                                                          this.percentWidth = 100;
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr01f1:
                                                                                             this.maxHeight = 22;
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr0205:
                                                                                                this.mxmlContent = [this._DropDownAmountListItemRenderer_HGroup1_c(),this._DropDownAmountListItemRenderer_HGroup2_i()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr021d:
                                                                                                   i = 0;
                                                                                                   addr021b:
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
                                                                                                         if(!(_loc4_ || _loc1_))
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc4_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            if(_loc3_ && Boolean(this))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc3_ && _loc1_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               var _temp_26:* = §§pop();
                                                                                                               §§pop().§§slot[4] = _temp_26;
                                                                                                               if(_loc4_ || _loc2_)
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
                                                                                             addr029a:
                                                                                          }
                                                                                          §§goto(addr0205);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01f1);
                                                                              }
                                                                              §§goto(addr01df);
                                                                           }
                                                                           §§goto(addr0180);
                                                                        }
                                                                        §§goto(addr021d);
                                                                     }
                                                                     §§goto(addr0165);
                                                                  }
                                                                  §§goto(addr021d);
                                                               }
                                                            }
                                                            §§goto(addr0165);
                                                         }
                                                         §§goto(addr0180);
                                                      }
                                                      §§goto(addr021d);
                                                   }
                                                   §§goto(addr010f);
                                                }
                                                §§goto(addr021d);
                                             }
                                             §§goto(addr021b);
                                          }
                                          §§goto(addr0116);
                                       }
                                       §§goto(addr01f1);
                                    }
                                    §§goto(addr029a);
                                 }
                                 §§goto(addr0165);
                              }
                              §§goto(addr01f1);
                           }
                           §§goto(addr010f);
                        }
                        §§goto(addr01df);
                     }
                     §§goto(addr021b);
                  }
                  §§goto(addr0116);
               }
               §§goto(addr029a);
            }
            §§goto(addr004d);
         }
         §§goto(addr0116);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            DropDownAmountListItemRenderer._watcherSetupUtil = param1;
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
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr004a);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr0055);
            }
            addr004a:
            return;
         }
         addr0055:
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
      
      override public function set data(param1:Object) : void
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
                  addr0039:
                  super.data = param1;
                  if(_loc2_ || Boolean(param1))
                  {
                     this._data = param1 as DropDownAmountListItemVo;
                     if(!(_loc3_ && _loc3_))
                     {
                        this._isDirty = true;
                        if(_loc2_)
                        {
                           addr0075:
                           invalidateProperties();
                        }
                        §§goto(addr007a);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0075);
            }
            addr007a:
            return;
         }
         §§goto(addr0039);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._isDirty);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr0052);
                        }
                     }
                     §§goto(addr0065);
                  }
               }
               addr0052:
               §§pop();
               if(!(_loc2_ && _loc1_))
               {
                  addr0065:
                  addr0060:
                  if(Boolean(this._data))
                  {
                     if(_loc1_ || Boolean(this))
                     {
                        this._isDirty = false;
                        if(_loc1_)
                        {
                           addr008a:
                           this.categoryLabel.text = this._data.categoryLabel;
                           if(!(_loc2_ && _loc1_))
                           {
                              this.amountLabel.text = LocaUtils.getThousendSeperatedNumber(this._data.categoryAmount);
                           }
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr008a);
                  }
               }
               addr00b7:
               return;
            }
         }
         §§goto(addr0060);
      }
      
      private function _DropDownAmountListItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.left = 6;
               if(!(_loc2_ && _loc2_))
               {
                  addr0054:
                  _loc1_.right = 6;
                  if(_loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._DropDownAmountListItemRenderer_BriskImageDynaLib1_c(),this._DropDownAmountListItemRenderer_BriskImageDynaLib2_c(),this._DropDownAmountListItemRenderer_BriskImageDynaLib3_c()];
                        addr0070:
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr00a0);
                        }
                     }
                     §§goto(addr00b4);
                  }
               }
               §§goto(addr0070);
            }
            §§goto(addr0054);
         }
         addr00a0:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr00b4:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "sorting_bar_left";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0056);
            }
         }
         addr005a:
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!_loc2_)
            {
               §§goto(addr0041);
            }
            §§goto(addr0080);
         }
         addr0041:
         _loc1_.dynaBmpSourceName = "sorting_bar_middle";
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr006c);
            }
            §§goto(addr0080);
         }
         addr006c:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc2_)
            {
               addr0080:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "sorting_bar_right";
               if(!(_loc3_ && _loc2_))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr0073);
      }
      
      private function _DropDownAmountListItemRenderer_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.height = 18;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0079:
                        _loc1_.paddingLeft = 12;
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr008c);
                        }
                        §§goto(addr0097);
                     }
                     addr008c:
                     _loc1_.paddingRight = 12;
                     if(!_loc3_)
                     {
                        addr0097:
                        _loc1_.mxmlContent = [this._DropDownAmountListItemRenderer_LocaLabel1_i(),this._DropDownAmountListItemRenderer_LocaLabel2_i()];
                        if(!_loc3_)
                        {
                           addr00ad:
                           _loc1_.id = "labelGroup";
                           if(_loc2_ || Boolean(this))
                           {
                              addr00c0:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00d9:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00e2:
                                       this.labelGroup = _loc1_;
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr00f4:
                                          BindingManager.executeBindings(this,"labelGroup",this.labelGroup);
                                       }
                                       §§goto(addr0101);
                                    }
                                    §§goto(addr00f4);
                                 }
                                 §§goto(addr0101);
                              }
                              §§goto(addr00e2);
                           }
                        }
                        §§goto(addr00d9);
                     }
                     addr0101:
                     return _loc1_;
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00c0);
            }
            §§goto(addr00ad);
         }
         §§goto(addr0079);
      }
      
      private function _DropDownAmountListItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.bottom = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.styleName = "elevenWhiteLeft";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005b:
                     _loc1_.maxDisplayedLines = 1;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "categoryLabel";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a9:
                                    this.categoryLabel = _loc1_;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00bb:
                                       BindingManager.executeBindings(this,"categoryLabel",this.categoryLabel);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr00bb);
            }
            addr00c8:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _DropDownAmountListItemRenderer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.maxDisplayedLines = 1;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.styleName = "elevenWhiteRight";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.text = "0";
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006d:
                     _loc1_.id = "amountLabel";
                     if(!_loc3_)
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0099:
                                 this.amountLabel = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00ab:
                                    BindingManager.executeBindings(this,"amountLabel",this.amountLabel);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00ab);
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0078);
            }
         }
         §§goto(addr006d);
      }
      
      private function _DropDownAmountListItemRenderer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc1_)
            {
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  addr0043:
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Array
                        {
                           var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                           return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                        },null,"categoryLabel.filters");
                        if(_loc2_)
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              §§goto(addr00a0);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008b);
                  }
                  addr00a0:
                  §§goto(addr007a);
               }
               addr007a:
               §§push(§§pop().§§slot[1]);
               if(_loc2_ || _loc1_)
               {
                  addr008b:
                  §§pop()[1] = new Binding(this,function():Array
                  {
                     var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                     return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                  },null,"amountLabel.filters");
                  addr009e:
                  addr009c:
                  return result;
               }
            }
            §§goto(addr009c);
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get amountLabel() : LocaLabel
      {
         return this._1229015684amountLabel;
      }
      
      public function set amountLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1229015684amountLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1229015684amountLabel = param1;
                  addr0046:
                  if(!_loc4_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryLabel() : LocaLabel
      {
         return this._320749718categoryLabel;
      }
      
      public function set categoryLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._320749718categoryLabel;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._320749718categoryLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get labelGroup() : HGroup
      {
         return this._1671708693labelGroup;
      }
      
      public function set labelGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1671708693labelGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1671708693labelGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
         }
         addr0076:
      }
   }
}

