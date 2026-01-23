package net.bigpoint.cityrama.view.emergencyBook.ui.skins
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
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PagingItemRenderer;
   import net.bigpoint.cityrama.view.common.skins.PagingListSkin;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencyDataGridComponent;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class EmergencyDataGridSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _742810227badgeSortButton:ToggleButton;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _505663145listLeftButton:DynamicImageButton;
      
      private var _1541462256listRightButton:DynamicImageButton;
      
      private var _1590968485nameSortButton:ToggleButton;
      
      private var _1337706616operationCountSortButton:ToggleButton;
      
      private var _1708347080pagingLabel:LocaLabel;
      
      private var _1302042186pagingList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:EmergencyDataGridComponent;
      
      public function EmergencyDataGridSkin()
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
         if(!_loc4_)
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc1_)
                           {
                              addr0054:
                              §§pop().§§slot[5] = null;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0065:
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_ || _loc1_)
                                 {
                                    addr0078:
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_ || _loc1_)
                                          {
                                             super();
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                addr00b3:
                                                mx_internal::_document = this;
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   addr00ce:
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§pop().§§slot[1] = this._EmergencyDataGridSkin_bindingsSetup();
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            addr0106:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               addr0119:
                                                               §§push(§§newactivation());
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  addr0128:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr013b:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              addr0164:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencyDataGridSkinWatcherSetupUtil");
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    addr0187:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr019e:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return EmergencyDataGridSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          addr01c2:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             addr01f1:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                addr0220:
                                                                                                this.mxmlContent = [this._EmergencyDataGridSkin_VGroup1_c()];
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0231:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr023d:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr026c:
                                                                                                         i = 0;
                                                                                                         addr026a:
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
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  Binding(bindings[i]).execute();
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc4_ && _loc2_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        var _temp_28:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_28;
                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      return;
                                                                                                      addr02e4:
                                                                                                   }
                                                                                                   §§goto(addr026a);
                                                                                                }
                                                                                                §§goto(addr023d);
                                                                                             }
                                                                                             §§goto(addr026a);
                                                                                          }
                                                                                          §§goto(addr023d);
                                                                                       }
                                                                                       §§goto(addr0231);
                                                                                    }
                                                                                    §§goto(addr0220);
                                                                                 }
                                                                                 §§goto(addr026c);
                                                                              }
                                                                              §§goto(addr01c2);
                                                                           }
                                                                           §§goto(addr0187);
                                                                        }
                                                                     }
                                                                     §§goto(addr019e);
                                                                  }
                                                                  §§goto(addr0220);
                                                               }
                                                               §§goto(addr0164);
                                                            }
                                                            §§goto(addr026a);
                                                         }
                                                         §§goto(addr0128);
                                                      }
                                                      §§goto(addr01f1);
                                                   }
                                                   §§goto(addr0164);
                                                }
                                                §§goto(addr013b);
                                             }
                                             §§goto(addr00ce);
                                          }
                                          §§goto(addr023d);
                                       }
                                       §§goto(addr00b3);
                                    }
                                    §§goto(addr026a);
                                 }
                                 §§goto(addr0119);
                              }
                              §§goto(addr0078);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr0065);
                     }
                     §§goto(addr0054);
                  }
                  §§goto(addr0164);
               }
               §§goto(addr02e4);
            }
            §§goto(addr0054);
         }
         §§goto(addr0164);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            EmergencyDataGridSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               addr0033:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0033);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.commitProperties();
         }
      }
      
      private function _EmergencyDataGridSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  addr0039:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        addr0064:
                        _loc1_.gap = 0;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.mxmlContent = [this._EmergencyDataGridSkin_HGroup1_c(),this._EmergencyDataGridSkin_List1_i(),this._EmergencyDataGridSkin_LocaLabel1_i()];
                           addr0076:
                           if(!_loc3_)
                           {
                              §§goto(addr009e);
                           }
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0064);
               }
               addr009e:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00b2:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0039);
         }
         §§goto(addr00b2);
      }
      
      private function _EmergencyDataGridSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  addr003f:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr0068);
                     }
                  }
               }
               §§goto(addr0090);
            }
            addr0068:
            _loc1_.mxmlContent = [this._EmergencyDataGridSkin_Group1_c(),this._EmergencyDataGridSkin_VGroup2_c(),this._EmergencyDataGridSkin_Group2_c()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0090:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _EmergencyDataGridSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 38;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._EmergencyDataGridSkin_DynamicImageButton1_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0066);
               }
               §§goto(addr0072);
            }
            addr0066:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0072:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _EmergencyDataGridSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.styleName = "listLeft";
            if(_loc3_ || _loc3_)
            {
               addr0034:
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "listLeftButton";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0084:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00a2);
                              }
                              §§goto(addr00b4);
                           }
                        }
                        addr00a2:
                        this.listLeftButton = _loc1_;
                        if(_loc3_ || _loc2_)
                        {
                           addr00b4:
                           BindingManager.executeBindings(this,"listLeftButton",this.listLeftButton);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00b4);
                  }
                  addr00c1:
                  return _loc1_;
               }
               §§goto(addr0084);
            }
            §§goto(addr00a2);
         }
         §§goto(addr0034);
      }
      
      private function _EmergencyDataGridSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  §§goto(addr0055);
               }
               §§goto(addr006b);
            }
            addr0055:
            _loc1_.mxmlContent = [this._EmergencyDataGridSkin_HGroup2_c(),this._EmergencyDataGridSkin_DataGroup1_i()];
            if(_loc3_)
            {
               addr006b:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0083);
         }
         addr0083:
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "left";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._EmergencyDataGridSkin_ToggleButton1_i(),this._EmergencyDataGridSkin_ToggleButton2_i(),this._EmergencyDataGridSkin_ToggleButton3_i()];
                     addr0051:
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0051);
            }
         }
         addr0091:
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_ToggleButton1_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "badgeSort";
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "badgeSortButton";
               if(_loc2_ || Boolean(this))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr008e:
                           this.badgeSortButton = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr00a0:
                              BindingManager.executeBindings(this,"badgeSortButton",this.badgeSortButton);
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr00a0);
            }
            §§goto(addr005f);
         }
         §§goto(addr00a0);
      }
      
      private function _EmergencyDataGridSkin_ToggleButton2_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc3_)
         {
            _loc1_.styleName = "nameSort";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.id = "nameSortButton";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0073);
                           }
                           §§goto(addr0085);
                        }
                     }
                     addr0073:
                     this.nameSortButton = _loc1_;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0085:
                        BindingManager.executeBindings(this,"nameSortButton",this.nameSortButton);
                     }
                     §§goto(addr0092);
                  }
                  addr0092:
                  return _loc1_;
               }
               §§goto(addr0073);
            }
         }
         §§goto(addr0085);
      }
      
      private function _EmergencyDataGridSkin_ToggleButton3_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "operationCountSort";
            if(_loc3_)
            {
               addr0036:
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "operationCountSortButton";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr0091:
                              this.operationCountSortButton = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a3:
                                 BindingManager.executeBindings(this,"operationCountSortButton",this.operationCountSortButton);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0091);
            }
            §§goto(addr0068);
         }
         §§goto(addr0036);
      }
      
      private function _EmergencyDataGridSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.layout = this._EmergencyDataGridSkin_VerticalLayout1_c();
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr006c:
                     _loc1_.id = "dataGroup";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0083:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr009e:
                                 this.dataGroup = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                 }
                              }
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr0083);
            }
            §§goto(addr006c);
         }
         addr00bd:
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc3_)
         {
            _loc1_.clipAndEnableScrolling = true;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.requestedMaxRowCount = 4;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0063:
                  _loc1_.requestedRowCount = 4;
                  if(_loc3_)
                  {
                     _loc1_.gap = -2;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0063);
      }
      
      private function _EmergencyDataGridSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 38;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._EmergencyDataGridSkin_DynamicImageButton2_i()];
               if(!_loc2_)
               {
                  addr004e:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004e);
      }
      
      private function _EmergencyDataGridSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "listRight";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr006c);
            }
            addr0059:
            _loc1_.id = "listRightButton";
            if(!(_loc3_ && _loc3_))
            {
               addr006c:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0080:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        addr009b:
                        this.listRightButton = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr00ad:
                           BindingManager.executeBindings(this,"listRightButton",this.listRightButton);
                        }
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr009b);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _EmergencyDataGridSkin_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.itemRenderer = this._EmergencyDataGridSkin_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.includeInLayout = false;
               if(!_loc2_)
               {
                  _loc1_.visible = false;
                  if(_loc3_)
                  {
                     addr0041:
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.setStyle("skinClass",PagingListSkin);
                        if(!_loc2_)
                        {
                           addr006d:
                           _loc1_.id = "pagingList";
                           if(!_loc2_)
                           {
                              addr0078:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr0084:
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00a1:
                                       this.pagingList = _loc1_;
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr00b3:
                                          BindingManager.executeBindings(this,"pagingList",this.pagingList);
                                       }
                                    }
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr0078);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr00a1);
            }
            addr00c0:
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _EmergencyDataGridSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || _loc3_)
         {
            _loc1_.generator = PagingItemRenderer;
         }
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "pagingTextNormal";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.bottom = 0;
                  if(_loc3_)
                  {
                     _loc1_.id = "pagingLabel";
                     if(!_loc2_)
                     {
                        addr0063:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007b:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr008c);
                              }
                           }
                           §§goto(addr0096);
                        }
                        addr008c:
                        this.pagingLabel = _loc1_;
                        if(!_loc2_)
                        {
                           addr0096:
                           BindingManager.executeBindings(this,"pagingLabel",this.pagingLabel);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr00a3);
            }
            §§goto(addr0063);
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _EmergencyDataGridSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§goto(addr0044);
               }
               §§goto(addr0068);
            }
            §§goto(addr0066);
         }
         addr0044:
         §§push(§§pop().§§slot[1]);
         if(_loc3_ || _loc2_)
         {
            §§pop()[0] = new Binding(this,function():Number
            {
               return dataGroup.width;
            },null,"pagingList.width");
            addr0068:
            addr0066:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeSortButton() : ToggleButton
      {
         return this._742810227badgeSortButton;
      }
      
      public function set badgeSortButton(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._742810227badgeSortButton;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr004c:
                  this._742810227badgeSortButton = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeSortButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get listLeftButton() : DynamicImageButton
      {
         return this._505663145listLeftButton;
      }
      
      public function set listLeftButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._505663145listLeftButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._505663145listLeftButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listLeftButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get listRightButton() : DynamicImageButton
      {
         return this._1541462256listRightButton;
      }
      
      public function set listRightButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1541462256listRightButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1541462256listRightButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listRightButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameSortButton() : ToggleButton
      {
         return this._1590968485nameSortButton;
      }
      
      public function set nameSortButton(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1590968485nameSortButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1590968485nameSortButton = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameSortButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get operationCountSortButton() : ToggleButton
      {
         return this._1337706616operationCountSortButton;
      }
      
      public function set operationCountSortButton(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1337706616operationCountSortButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr004a:
                  this._1337706616operationCountSortButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationCountSortButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get pagingLabel() : LocaLabel
      {
         return this._1708347080pagingLabel;
      }
      
      public function set pagingLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1708347080pagingLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1708347080pagingLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pagingLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get pagingList() : List
      {
         return this._1302042186pagingList;
      }
      
      public function set pagingList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1302042186pagingList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1302042186pagingList = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0077);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pagingList",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : EmergencyDataGridComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:EmergencyDataGridComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr006f);
      }
   }
}

