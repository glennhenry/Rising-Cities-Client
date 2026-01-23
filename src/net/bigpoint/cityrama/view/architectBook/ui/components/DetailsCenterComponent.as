package net.bigpoint.cityrama.view.architectBook.ui.components
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
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class DetailsCenterComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1161660680centerItem:LargeDetailComponent;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CenterItemDataVo;
      
      private var _dataIsDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DetailsCenterComponent()
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
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_ || _loc1_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0059:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || Boolean(this))
                        {
                           addr007e:
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          addr00c5:
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             addr00cc:
                                             §§pop().§§slot[1] = this._DetailsCenterComponent_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                addr00dc:
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc1_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         addr0108:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  addr013b:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr0142:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_architectBook_ui_components_DetailsCenterComponentWatcherSetupUtil");
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0165:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr017c:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return DetailsCenterComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    addr01d0:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01f6:
                                                                                       this.width = 270;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr0202:
                                                                                          this.mxmlContent = [this._DetailsCenterComponent_HGroup1_c(),this._DetailsCenterComponent_VGroup1_c(),this._DetailsCenterComponent_VGroup2_c()];
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr0221:
                                                                                             i = 0;
                                                                                             addr021f:
                                                                                          }
                                                                                          var _temp_17:*;
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
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(_loc4_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc3_)
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
                                                                                          while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, _loc4_ || Boolean(this));
                                                                                          
                                                                                          return;
                                                                                          addr0291:
                                                                                       }
                                                                                       §§goto(addr021f);
                                                                                    }
                                                                                    §§goto(addr0202);
                                                                                 }
                                                                                 §§goto(addr01f6);
                                                                              }
                                                                              §§goto(addr01d0);
                                                                           }
                                                                           §§goto(addr0291);
                                                                        }
                                                                        §§goto(addr0221);
                                                                     }
                                                                     §§goto(addr017c);
                                                                  }
                                                                  §§goto(addr0165);
                                                               }
                                                               §§goto(addr01d0);
                                                            }
                                                            §§goto(addr017c);
                                                         }
                                                         §§goto(addr0202);
                                                      }
                                                      §§goto(addr0221);
                                                   }
                                                   §§goto(addr0202);
                                                }
                                                §§goto(addr0108);
                                             }
                                             §§goto(addr021f);
                                          }
                                          §§goto(addr0142);
                                       }
                                       §§goto(addr0291);
                                    }
                                    §§goto(addr017c);
                                 }
                                 §§goto(addr013b);
                              }
                              §§goto(addr017c);
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr0202);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr007e);
            }
            §§goto(addr0059);
         }
         §§goto(addr00cc);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            DetailsCenterComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               §§goto(addr0036);
            }
            §§goto(addr0044);
         }
         addr0036:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               addr0044:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      public function set data(param1:CenterItemDataVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this.centerItem);
                  if(_loc2_)
                  {
                     §§pop().buttonInfos = param1;
                     if(!_loc3_)
                     {
                        §§goto(addr005e);
                     }
                     §§goto(addr007c);
                  }
                  addr005e:
                  this.centerItem.data = param1.blueprintVO;
                  §§goto(addr005a);
               }
               addr005a:
               if(_loc2_ || Boolean(this))
               {
                  addr007c:
                  this._data = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr008e);
                  }
                  §§goto(addr00a0);
               }
               addr008e:
               this._dataIsDirty = true;
               if(_loc2_ || Boolean(param1))
               {
                  addr00a0:
                  invalidateProperties();
               }
               §§goto(addr00a5);
            }
            addr00a5:
            return;
         }
         §§goto(addr007c);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this._dataIsDirty)
               {
                  if(!_loc1_)
                  {
                     addr003f:
                     this._dataIsDirty = false;
                     if(_loc2_)
                     {
                        addr0049:
                        this.setToolTip();
                     }
                     §§goto(addr004f);
                  }
                  §§goto(addr0049);
               }
               §§goto(addr004f);
            }
            §§goto(addr003f);
         }
         addr004f:
      }
      
      private function handleRight() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event("right",true));
         }
      }
      
      private function handleLeft() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            dispatchEvent(new Event("left",true));
         }
      }
      
      private function setToolTip() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_loc4_)
         {
            §§push(LocaUtils);
            §§push("rcl.playfielditems.name");
            §§push("rcl.playfielditems.name.");
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop() + this._data.blueprintVO.configObj.localeId);
            }
            §§push(§§pop().getString(§§pop(),§§pop()));
            if(!_loc4_)
            {
               §§push(§§pop());
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  _loc1_ = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this._data.blueprintVO.locked)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr00b3);
                        }
                        §§goto(addr00ba);
                     }
                     else
                     {
                        §§push(this.centerItem);
                     }
                     §§goto(addr011c);
                  }
                  §§goto(addr00ba);
               }
               addr00b3:
               §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.overview.locked",[this._data.blueprintVO.unlockLvl]));
               if(!_loc4_)
               {
                  addr00b2:
                  §§push(§§pop());
               }
               _loc2_ = §§pop();
               if(!_loc4_)
               {
                  addr00ba:
                  §§push(this.centerItem);
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     §§push(§§pop().backgroundPrint);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(_loc1_);
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           §§push(§§pop() + ": ");
                           if(!_loc4_)
                           {
                              §§push(§§pop() + _loc2_);
                           }
                           §§pop().toolTip = §§pop();
                           if(_loc4_ && Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           addr0120:
                           §§pop().toolTip = §§pop();
                        }
                        §§goto(addr0122);
                     }
                     else
                     {
                        addr011f:
                        §§push(_loc1_);
                     }
                     §§goto(addr0120);
                  }
                  else
                  {
                     addr011c:
                     §§push(§§pop().backgroundPrint);
                  }
                  §§goto(addr011f);
               }
               §§goto(addr0122);
            }
            §§goto(addr00b2);
         }
         addr0122:
      }
      
      private function _DetailsCenterComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr008a);
               }
            }
            addr005c:
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._DetailsCenterComponent_LargeDetailComponent1_i()];
               addr0066:
               if(_loc2_ || _loc2_)
               {
                  addr008a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr009e:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr009e);
            }
            addr00a2:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _DetailsCenterComponent_LargeDetailComponent1_i() : LargeDetailComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LargeDetailComponent = new LargeDetailComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "centerItem";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0088);
               }
               addr0075:
               _loc1_.document = this;
               if(_loc2_)
               {
                  addr007e:
                  this.centerItem = _loc1_;
                  if(_loc2_)
                  {
                     addr0088:
                     BindingManager.executeBindings(this,"centerItem",this.centerItem);
                  }
               }
               return _loc1_;
            }
            §§goto(addr007e);
         }
         §§goto(addr0088);
      }
      
      private function _DetailsCenterComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr0039);
            }
            §§goto(addr008a);
         }
         addr0039:
         _loc1_.percentHeight = 100;
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc3_)
            {
               _loc1_.width = 41;
               if(_loc3_)
               {
                  _loc1_.left = -2;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr008a:
                     _loc1_.mxmlContent = [this._DetailsCenterComponent_DynamicImageButton1_i(),this._DetailsCenterComponent_Group2_c()];
                     if(!_loc2_)
                     {
                        §§goto(addr00a0);
                     }
                  }
               }
               §§goto(addr00ac);
            }
            §§goto(addr008a);
         }
         addr00a0:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr00ac:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "listLeft";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.addEventListener("click",this.__scrollLeft_click);
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr005e);
               }
               §§goto(addr0071);
            }
            §§goto(addr0091);
         }
         addr005e:
         _loc1_.id = "scrollLeft";
         if(_loc2_ || _loc3_)
         {
            addr0071:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0091:
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr00a2);
                  }
                  §§goto(addr00ac);
               }
            }
         }
         addr00a2:
         this.scrollLeft = _loc1_;
         if(!_loc3_)
         {
            addr00ac:
            BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
         }
         return _loc1_;
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleLeft();
         }
      }
      
      private function _DetailsCenterComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.height = 40;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.right = -1.5;
               if(_loc3_)
               {
                  _loc1_.width = 41;
                  addr003c:
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.mxmlContent = [this._DetailsCenterComponent_DynamicImageButton2_i(),this._DetailsCenterComponent_Group3_c()];
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0099:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00a5:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr00a9);
                     }
                  }
                  §§goto(addr0099);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr003c);
         }
         §§goto(addr00a5);
      }
      
      private function _DetailsCenterComponent_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "listRight";
            if(!_loc2_)
            {
               _loc1_.addEventListener("click",this.__scrollRight_click);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "scrollRight";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr006a:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr008b);
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0094);
            }
            addr008b:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr0094:
               this.scrollRight = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
               }
            }
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleRight();
         }
      }
      
      private function _DetailsCenterComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 40;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr0049:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004d);
            }
            §§goto(addr0049);
         }
         addr004d:
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§newactivation());
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipLeftScroll");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"scrollLeft.toolTip");
                        if(!_loc3_)
                        {
                           addr0070:
                           §§push(§§newactivation());
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr009b:
                                 §§pop()[1] = new Binding(this,function():String
                                 {
                                    var _loc1_:* = getStyle("tooltipRightScroll");
                                    return _loc1_ == undefined ? null : String(_loc1_);
                                 },null,"scrollRight.toolTip");
                                 addr00af:
                                 addr00ad:
                                 §§push(result);
                                 addr0099:
                              }
                              return §§pop();
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00af);
            }
            §§goto(addr0070);
         }
         §§goto(addr00af);
      }
      
      [Bindable(event="propertyChange")]
      public function get centerItem() : LargeDetailComponent
      {
         return this._1161660680centerItem;
      }
      
      public function set centerItem(param1:LargeDetailComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1161660680centerItem;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1161660680centerItem = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0070);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerItem",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._66047092scrollLeft;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._66047092scrollLeft = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr0053);
               }
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2053120847scrollRight;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2053120847scrollRight = param1;
                  if(_loc4_ || _loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
   }
}

