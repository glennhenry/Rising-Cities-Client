package net.bigpoint.cityrama.view.boosterpackstore.ui.components
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.BoosterpackListSkin;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.popup.ui.components.FeatureLockedScreen;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class BoosterpackDataGrid extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var _2016210966lockedScreen:FeatureLockedScreen;
      
      private var _1583055797sublevelItemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _878929322uiInfolayerAlignmentLine2:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Vector.<BoosterpackVo>;
      
      private var _isDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BoosterpackDataGrid()
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
                  if(_loc4_ || _loc1_)
                  {
                     addr0043:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr007d:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc3_)
                                 {
                                    super();
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr0099:
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._BoosterpackDataGrid_bindingsSetup();
                                             if(_loc4_ || _loc1_)
                                             {
                                                addr00d4:
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   addr00dc:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      addr00f0:
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  addr0121:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0129:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackDataGridWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr0158:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              addr0177:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return BoosterpackDataGrid[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01e9:
                                                                                       this.percentWidth = 100;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01f3:
                                                                                          this.percentHeight = 100;
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr0205:
                                                                                             this.mxmlContent = [this._BoosterpackDataGrid_VGroup1_c(),this._BoosterpackDataGrid_FeatureLockedScreen1_i()];
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                addr0223:
                                                                                                this.addEventListener("creationComplete",this.___BoosterpackDataGrid_Group1_creationComplete);
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   addr023f:
                                                                                                   i = 0;
                                                                                                   addr023d:
                                                                                                }
                                                                                                var _temp_18:*;
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
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(_loc4_ || Boolean(this))
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
                                                                                                while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, _loc4_);
                                                                                                
                                                                                                return;
                                                                                                addr029a:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr023d);
                                                                                       }
                                                                                       §§goto(addr029a);
                                                                                    }
                                                                                    §§goto(addr0205);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01e9);
                                                                           }
                                                                           §§goto(addr023d);
                                                                        }
                                                                        §§goto(addr023f);
                                                                     }
                                                                     §§goto(addr0223);
                                                                  }
                                                                  §§goto(addr0158);
                                                               }
                                                               §§goto(addr0205);
                                                            }
                                                            §§goto(addr0177);
                                                         }
                                                         §§goto(addr01e9);
                                                      }
                                                      §§goto(addr0158);
                                                   }
                                                   §§goto(addr0205);
                                                }
                                                §§goto(addr0158);
                                             }
                                             §§goto(addr00f0);
                                          }
                                          §§goto(addr023f);
                                       }
                                       §§goto(addr023d);
                                    }
                                    §§goto(addr0121);
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr01f3);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr0177);
            }
            §§goto(addr0043);
         }
         §§goto(addr0129);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            BoosterpackDataGrid._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               §§goto(addr0033);
            }
            §§goto(addr0041);
         }
         addr0033:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               addr0041:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.flavorText.text = ResourceManager.getInstance().getString(String("rcl.booklayer.boosterpackStore"),String("rcl.booklayer.boosterpackStore.flavour"));
         }
      }
      
      public function set data(param1:Vector.<BoosterpackVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._isDirty = true;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006f);
               }
               addr005d:
               this._data = param1;
               if(!(_loc2_ && _loc3_))
               {
                  addr006f:
                  invalidateProperties();
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr006f);
      }
      
      public function locked(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this.mouseEnabled = this.mouseChildren = false;
            if(_loc4_)
            {
               addr003a:
               §§push(this.lockedScreen);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§pop().includeInLayout = this.lockedScreen.visible = true;
                  if(_loc4_)
                  {
                     addr006f:
                     this.lockedScreen.textLabel.text = LocaUtils.getString("rcl.booklayer.lockedFeature","rcl.booklayer.lockedFeature.boosterpackstore",[param1]);
                     addr006b:
                  }
                  return;
               }
               §§goto(addr006f);
            }
            §§goto(addr006b);
         }
         §§goto(addr003a);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:ArrayCollection = null;
         var _loc2_:ArrayCollection = null;
         var _loc3_:BoosterpackVo = null;
         var _loc4_:ConfigOutputDTO = null;
         if(_loc8_ || Boolean(_loc3_))
         {
            super.commitProperties();
            if(_loc8_)
            {
               §§push(Boolean(this._data));
               if(_loc8_ || Boolean(_loc1_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc7_)
                     {
                        addr0060:
                        §§pop();
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0079);
                  }
                  addr007a:
                  §§push(this._isDirty);
                  if(!_loc7_)
                  {
                     addr0079:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        addr0091:
                        this._isDirty = false;
                     }
                     addr0096:
                     _loc1_ = new ArrayCollection();
                     _loc2_ = new ArrayCollection();
                     for each(_loc3_ in this._data)
                     {
                        if(_loc8_ || Boolean(_loc1_))
                        {
                           if(_loc3_.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER)
                           {
                              if(_loc8_)
                              {
                                 _loc2_.addItem(_loc3_);
                                 if(_loc7_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              _loc1_.addItem(_loc3_);
                           }
                        }
                     }
                     _loc4_ = new ConfigOutputDTO({
                        "t":"RESOURCE",
                        "cid":1,
                        "o":1
                     });
                     if(_loc8_)
                     {
                        this.sublevelItemList.dataProvider = _loc2_;
                        if(!_loc7_)
                        {
                           addr013d:
                           this.itemList.dataProvider = _loc1_;
                        }
                        §§goto(addr0145);
                     }
                     §§goto(addr013d);
                  }
                  addr0145:
                  return;
               }
               §§goto(addr0060);
            }
            §§goto(addr0096);
         }
         §§goto(addr0091);
      }
      
      private function _BoosterpackDataGrid_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.paddingLeft = 6;
               if(!_loc3_)
               {
                  addr003e:
                  _loc1_.paddingRight = 6;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.bottom = 10;
                        if(!_loc3_)
                        {
                           addr0073:
                           _loc1_.gap = 10;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0085);
                           }
                           §§goto(addr00df);
                        }
                        §§goto(addr00cb);
                     }
                     addr0085:
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0098:
                        _loc1_.horizontalAlign = "center";
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._BoosterpackDataGrid_LocaLabel1_i(),this._BoosterpackDataGrid_Group2_c(),this._BoosterpackDataGrid_Group3_c()];
                           if(!_loc3_)
                           {
                              addr00cb:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00df:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0073);
            }
            §§goto(addr00df);
         }
         §§goto(addr003e);
      }
      
      private function _BoosterpackDataGrid_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 700;
            if(!_loc2_)
            {
               _loc1_.height = 25;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.styleName = "flavorText";
                  if(_loc3_ || _loc3_)
                  {
                     addr0064:
                     _loc1_.id = "flavorText";
                     if(!_loc2_)
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr008f);
                           }
                           §§goto(addr00a2);
                        }
                     }
                     §§goto(addr0098);
                  }
               }
               addr008f:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr0098:
                  this.flavorText = _loc1_;
                  if(!_loc2_)
                  {
                     addr00a2:
                     BindingManager.executeBindings(this,"flavorText",this.flavorText);
                  }
               }
               return _loc1_;
            }
            §§goto(addr006f);
         }
         §§goto(addr0064);
      }
      
      private function _BoosterpackDataGrid_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 150;
            if(_loc3_)
            {
               _loc1_.width = 470;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._BoosterpackDataGrid_List1_i(),this._BoosterpackDataGrid_UiInfolayerAlignmentLine1_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0073:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0087:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0073);
            }
            §§goto(addr0087);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || _loc3_)
         {
            _loc1_.itemRenderer = this._BoosterpackDataGrid_ClassFactory1_c();
            if(_loc3_)
            {
               _loc1_.height = 150;
               if(!_loc2_)
               {
                  _loc1_.width = 470;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0076);
                     }
                  }
                  §§goto(addr0090);
               }
            }
            addr0076:
            _loc1_.setStyle("skinClass",BoosterpackListSkin);
            if(_loc3_)
            {
               _loc1_.id = "sublevelItemList";
               if(!_loc2_)
               {
                  addr0090:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00b8:
                           this.sublevelItemList = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              BindingManager.executeBindings(this,"sublevelItemList",this.sublevelItemList);
                           }
                        }
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr00b8);
               }
            }
            addr00d7:
            return _loc1_;
         }
         §§goto(addr0090);
      }
      
      private function _BoosterpackDataGrid_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = BoosterpackItemRenderer;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.left = 0;
            if(_loc3_)
            {
               _loc1_.top = 150;
               if(_loc3_)
               {
                  addr003f:
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     _loc1_.lineId = 4;
                     if(!_loc2_)
                     {
                        addr0061:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr008d:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr009e);
                                 }
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr008d);
                     }
                     addr009e:
                     this.uiInfolayerAlignmentLine = _loc1_;
                     if(_loc3_)
                     {
                        addr00a8:
                        BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr008d);
            }
            §§goto(addr0061);
         }
         §§goto(addr003f);
      }
      
      private function _BoosterpackDataGrid_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 150;
            if(_loc3_ || _loc2_)
            {
               _loc1_.width = 728;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._BoosterpackDataGrid_List2_i(),this._BoosterpackDataGrid_UiInfolayerAlignmentLine2_i()];
                  §§goto(addr004d);
               }
               §§goto(addr008c);
            }
         }
         addr004d:
         if(!(_loc2_ && _loc3_))
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr008c:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_List2_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || _loc2_)
         {
            _loc1_.itemRenderer = this._BoosterpackDataGrid_ClassFactory2_c();
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 150;
               if(_loc3_)
               {
                  _loc1_.width = 728;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0068:
                     _loc1_.setStyle("skinClass",BoosterpackListSkin);
                     if(_loc3_)
                     {
                        _loc1_.id = "itemList";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0096:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr00b2);
                                 }
                                 §§goto(addr00c4);
                              }
                           }
                        }
                        addr00b2:
                        this.itemList = _loc1_;
                        if(_loc3_ || Boolean(this))
                        {
                           addr00c4:
                           BindingManager.executeBindings(this,"itemList",this.itemList);
                        }
                        §§goto(addr00d1);
                     }
                  }
                  §§goto(addr00d1);
               }
               §§goto(addr0068);
            }
            §§goto(addr0096);
         }
         addr00d1:
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_ClassFactory2_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = BoosterpackItemRenderer;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_ || _loc3_)
         {
            _loc1_.left = 0;
            if(!_loc2_)
            {
               _loc1_.top = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc3_)
                  {
                     _loc1_.lineId = 5;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "uiInfolayerAlignmentLine2";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0085:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr00c9);
                              }
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00c9);
                     }
                     addr00b7:
                     this.uiInfolayerAlignmentLine2 = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr00c9:
                        BindingManager.executeBindings(this,"uiInfolayerAlignmentLine2",this.uiInfolayerAlignmentLine2);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr0085);
            }
            addr00d6:
            return _loc1_;
         }
         §§goto(addr00c9);
      }
      
      private function _BoosterpackDataGrid_FeatureLockedScreen1_i() : FeatureLockedScreen
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FeatureLockedScreen = new FeatureLockedScreen();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.visible = false;
                  if(_loc2_)
                  {
                     _loc1_.top = -10;
                     if(!_loc3_)
                     {
                        _loc1_.includeInLayout = false;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007d:
                           _loc1_.id = "lockedScreen";
                           if(!_loc3_)
                           {
                              addr0088:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00b9:
                                       this.lockedScreen = _loc1_;
                                       if(_loc2_ || _loc3_)
                                       {
                                          BindingManager.executeBindings(this,"lockedScreen",this.lockedScreen);
                                       }
                                    }
                                    §§goto(addr00d8);
                                 }
                              }
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr00b9);
            }
            addr00d8:
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      public function ___BoosterpackDataGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.handleCreationComplete();
         }
      }
      
      private function _BoosterpackDataGrid_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(0);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                        },null,"uiInfolayerAlignmentLine.alignment");
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr00c8);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00b3);
                  }
                  addr00c8:
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr00b3:
                     §§pop()[1] = new Binding(this,function():uint
                     {
                        return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                     },null,"uiInfolayerAlignmentLine2.alignment");
                     addr00c6:
                     addr00c4:
                     return result;
                  }
               }
               §§goto(addr00c6);
            }
            §§goto(addr00c4);
         }
         §§goto(addr00c6);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684755691flavorText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1684755691flavorText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1177280081itemList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1177280081itemList = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedScreen() : FeatureLockedScreen
      {
         return this._2016210966lockedScreen;
      }
      
      public function set lockedScreen(param1:FeatureLockedScreen) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2016210966lockedScreen;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._2016210966lockedScreen = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedScreen",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr007c);
            }
            addr008b:
            return;
         }
         §§goto(addr007c);
      }
      
      [Bindable(event="propertyChange")]
      public function get sublevelItemList() : List
      {
         return this._1583055797sublevelItemList;
      }
      
      public function set sublevelItemList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1583055797sublevelItemList;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1583055797sublevelItemList = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublevelItemList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr005b);
            }
         }
         addr007a:
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine2() : UiInfolayerAlignmentLine
      {
         return this._878929322uiInfolayerAlignmentLine2;
      }
      
      public function set uiInfolayerAlignmentLine2(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._878929322uiInfolayerAlignmentLine2;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._878929322uiInfolayerAlignmentLine2 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006f);
      }
   }
}

