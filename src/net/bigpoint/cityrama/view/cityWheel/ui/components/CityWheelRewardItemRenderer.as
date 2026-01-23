package net.bigpoint.cityrama.view.cityWheel.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.cityWheel.events.CityWheelItemEvent;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelRewardVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   
   public class CityWheelRewardItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CityWheelRewardVo;
      
      private var _dataDirty:Boolean;
      
      public function CityWheelRewardItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.width = 130;
                  if(!_loc1_)
                  {
                     this.height = 95;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.autoDrawBackground = false;
                        if(_loc2_)
                        {
                           addr0069:
                           this.alpha = 1;
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr007c:
                              this.mxmlContent = [this._CityWheelRewardItemRenderer_Group1_c()];
                              if(_loc2_)
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr00ba);
                           }
                           addr008c:
                           this.currentState = "normal";
                           if(!_loc1_)
                           {
                              this.addEventListener("rollOver",this.___CityWheelRewardItemRenderer_ItemRenderer1_rollOver);
                              if(_loc2_)
                              {
                                 this.addEventListener("rollOut",this.___CityWheelRewardItemRenderer_ItemRenderer1_rollOut);
                                 if(_loc2_)
                                 {
                                    states = [new State({
                                       "name":"normal",
                                       "overrides":[]
                                    }),new State({
                                       "name":"locked",
                                       "overrides":[new SetProperty().initializeFromObject({
                                          "name":"alpha",
                                          "value":0.3
                                       })]
                                    })];
                                    addr00ba:
                                 }
                              }
                           }
                        }
                        §§goto(addr0100);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0069);
               }
            }
            §§goto(addr007c);
         }
         addr0100:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0046);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr005a);
            }
            addr0046:
            return;
         }
         addr005a:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
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
            super.data = param1;
            if(_loc2_ || Boolean(this))
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     addr005c:
                     this._dataDirty = true;
                     if(_loc2_ || _loc2_)
                     {
                        this._data = param1 as CityWheelRewardVo;
                        if(_loc2_)
                        {
                           addr007c:
                           invalidateProperties();
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr007c);
                  }
               }
               addr0081:
               return;
            }
         }
         §§goto(addr005c);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:GlowFilter = null;
         var _loc2_:DropShadowFilter = null;
         if(!(_loc4_ && Boolean(this)))
         {
            super.commitProperties();
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr0041);
            }
            §§goto(addr01cb);
         }
         addr0041:
         §§push(this._dataDirty);
         if(!_loc4_)
         {
            §§push(§§pop());
            if(!(_loc4_ && Boolean(this)))
            {
               var _temp_5:* = §§pop();
               §§push(_temp_5);
               if(_temp_5)
               {
                  if(_loc5_)
                  {
                     addr0065:
                     §§pop();
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§goto(addr0079);
                     }
                     §§goto(addr01cb);
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr0065);
         }
         addr0079:
         if(Boolean(this._data))
         {
            addr01cb:
            §§push(this._data);
            if(_loc5_ || Boolean(_loc2_))
            {
               §§push(§§pop().rewardType);
               if(_loc5_)
               {
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     §§push(ServerTagConstants.WHEEL_REWARD_JACKPOT);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(_loc4_ && Boolean(_loc1_))
                                 {
                                 }
                              }
                              else
                              {
                                 addr0227:
                                 §§push(1);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                              }
                              §§goto(addr0247);
                           }
                           else
                           {
                              §§goto(addr0223);
                           }
                        }
                        addr0223:
                        §§goto(addr0222);
                     }
                     addr0222:
                     if(ServerTagConstants.WHEEL_REWARD_HIGH === _loc3_)
                     {
                        §§goto(addr0227);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr0247:
                     switch(§§pop())
                     {
                        case 0:
                           §§push(this.background);
                           if(!_loc4_)
                           {
                              §§push("item_background_jackpot");
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§pop().dynaBmpSourceName = §§pop();
                                 if(!(_loc4_ && Boolean(_loc1_)))
                                 {
                                    §§push(this.background);
                                    if(!_loc4_)
                                    {
                                       §§push(this.background);
                                       if(_loc5_)
                                       {
                                          §§push(true);
                                          if(_loc5_ || Boolean(_loc1_))
                                          {
                                             var _temp_13:* = §§pop();
                                             §§push(_temp_13);
                                             §§push(_temp_13);
                                             if(_loc5_ || Boolean(_loc2_))
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc4_ && Boolean(_loc1_)))
                                                {
                                                   §§pop().includeInLayout = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§pop().visible = §§pop();
                                                            if(_loc5_ || Boolean(_loc2_))
                                                            {
                                                               addr0265:
                                                               §§push(this.icon);
                                                               if(!(_loc4_ && Boolean(_loc1_)))
                                                               {
                                                                  §§push(this._data);
                                                                  if(!(_loc4_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§push(§§pop().iconName);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                        if(!(_loc4_ && Boolean(_loc2_)))
                                                                        {
                                                                           addr02a2:
                                                                           §§push(this.icon);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr02b3:
                                                                              §§pop().dynaLibName = this._data.libName;
                                                                              addr02b0:
                                                                              addr02ac:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(this._data);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr02c5:
                                                                                    §§push(§§pop().outputType);
                                                                                    if(!(_loc4_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       §§push(ServerOutputConstants.PERMISSION);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             var _temp_23:* = §§pop();
                                                                                             §§push(_temp_23);
                                                                                             if(!_temp_23)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr02fc:
                                                                                                   §§pop();
                                                                                                   if(_loc5_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      addr0319:
                                                                                                      addr0318:
                                                                                                      addr0312:
                                                                                                      addr030f:
                                                                                                      addr030b:
                                                                                                      if(this._data.outputType == ServerOutputConstants.ASSIST)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr0323:
                                                                                                            _loc1_ = new GlowFilter(16777215,1,8,8,8,1,false,false);
                                                                                                            _loc2_ = new DropShadowFilter(0,1,0,1,3,3);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            this.icon.filters = [_loc1_,_loc2_];
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr037c:
                                                                                                         this.icon.filters = [];
                                                                                                      }
                                                                                                      addr0381:
                                                                                                      this._dataDirty = false;
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr0323);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0319);
                                                                                          }
                                                                                          §§goto(addr02fc);
                                                                                       }
                                                                                       §§goto(addr0318);
                                                                                    }
                                                                                    §§goto(addr0312);
                                                                                 }
                                                                                 §§goto(addr030f);
                                                                              }
                                                                              §§goto(addr030b);
                                                                           }
                                                                           §§goto(addr037c);
                                                                        }
                                                                        §§goto(addr0381);
                                                                     }
                                                                     §§goto(addr02b3);
                                                                  }
                                                                  §§goto(addr02b0);
                                                               }
                                                               §§goto(addr02ac);
                                                            }
                                                            §§goto(addr02a2);
                                                         }
                                                         else
                                                         {
                                                            addr01bb:
                                                            §§pop().visible = §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr0265);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0189:
                                                         if(_loc5_)
                                                         {
                                                            §§pop().visible = §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr0265);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr01bb);
                                                         }
                                                      }
                                                      §§goto(addr0381);
                                                   }
                                                   else
                                                   {
                                                      addr0182:
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr0189);
                                                      }
                                                      else
                                                      {
                                                         addr01b9:
                                                      }
                                                      §§goto(addr01bb);
                                                   }
                                                }
                                                else
                                                {
                                                   addr01b6:
                                                   §§pop().includeInLayout = §§pop();
                                                   addr01b8:
                                                   §§push(_loc3_);
                                                }
                                                §§goto(addr01b9);
                                             }
                                             else
                                             {
                                                addr01b5:
                                                _loc3_ = §§pop();
                                             }
                                             §§goto(addr01b6);
                                          }
                                          else
                                          {
                                             addr01b4:
                                             var _temp_25:* = §§pop();
                                             §§push(_temp_25);
                                             §§push(_temp_25);
                                          }
                                          §§goto(addr01b5);
                                       }
                                       else
                                       {
                                          addr01b3:
                                          §§push(false);
                                       }
                                       §§goto(addr01b4);
                                    }
                                    else
                                    {
                                       addr0131:
                                       §§pop().dynaBmpSourceName = "item_background_good";
                                       addr012d:
                                       if(!_loc4_)
                                       {
                                          §§push(this.background);
                                          if(!_loc4_)
                                          {
                                             addr0143:
                                             §§push(this.background);
                                             if(_loc5_)
                                             {
                                                §§push(true);
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   var _temp_27:* = §§pop();
                                                   §§push(_temp_27);
                                                   §§push(_temp_27);
                                                   if(!_loc4_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         §§pop().includeInLayout = §§pop();
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            §§goto(addr0182);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr01b8);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr01b6);
                                                      }
                                                      §§goto(addr01b8);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr01b5);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr01b4);
                                                }
                                                §§goto(addr01b5);
                                             }
                                             else
                                             {
                                                §§goto(addr01b3);
                                             }
                                          }
                                          else
                                          {
                                             addr01af:
                                             §§push(this.background);
                                          }
                                          §§goto(addr01b3);
                                       }
                                    }
                                    §§goto(addr0265);
                                 }
                                 §§goto(addr030b);
                              }
                              §§goto(addr0131);
                           }
                           §§goto(addr012d);
                        case 1:
                           §§push(this.background);
                           if(!_loc4_)
                           {
                              §§goto(addr012d);
                           }
                           §§goto(addr0143);
                        default:
                           §§goto(addr01af);
                           §§push(this.background);
                     }
                     §§goto(addr0386);
                  }
                  §§goto(addr0227);
               }
               §§goto(addr0312);
            }
            §§goto(addr02c5);
         }
         addr0386:
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            dispatchEvent(new CityWheelItemEvent(CityWheelItemEvent.ITEM_OVER,true,this.itemIndex));
         }
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            dispatchEvent(new CityWheelItemEvent(CityWheelItemEvent.ITEM_OUT,true));
         }
      }
      
      private function _CityWheelRewardItemRenderer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 95;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._CityWheelRewardItemRenderer_BriskImageDynaLib1_i(),this._CityWheelRewardItemRenderer_VGroup1_c(),this._CityWheelRewardItemRenderer_BriskImageDynaLib3_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0084:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr0098:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0084);
            }
         }
         §§goto(addr0098);
      }
      
      private function _CityWheelRewardItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.includeInLayout = false;
               if(!_loc3_)
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "background";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a1:
                                 this.background = _loc1_;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00b3:
                                    BindingManager.executeBindings(this,"background",this.background);
                                 }
                              }
                              §§goto(addr00c0);
                           }
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr00b3);
                  }
                  addr00c0:
                  return _loc1_;
               }
            }
            §§goto(addr0071);
         }
         §§goto(addr00a1);
      }
      
      private function _CityWheelRewardItemRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.height = 95;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     addr005f:
                     _loc1_.mxmlContent = [this._CityWheelRewardItemRenderer_HGroup1_c()];
                     if(!_loc3_)
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0083:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0087);
                     }
                  }
                  §§goto(addr0083);
               }
               addr0087:
               return _loc1_;
            }
            §§goto(addr006f);
         }
         §§goto(addr005f);
      }
      
      private function _CityWheelRewardItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._CityWheelRewardItemRenderer_BriskImageDynaLib2_i()];
                  if(_loc3_)
                  {
                     addr0064:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0078:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0078);
               }
               addr007c:
               return _loc1_;
            }
            §§goto(addr0078);
         }
         §§goto(addr0064);
      }
      
      private function _CityWheelRewardItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.id = "icon";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0067:
                        this.icon = _loc1_;
                        if(_loc3_ || Boolean(this))
                        {
                           addr0079:
                           BindingManager.executeBindings(this,"icon",this.icon);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0067);
            }
            §§goto(addr0079);
         }
         addr0086:
         return _loc1_;
      }
      
      private function _CityWheelRewardItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "separator_main";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.height = 95;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr006f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr0087);
            }
            §§goto(addr006f);
         }
         addr0087:
         return _loc1_;
      }
      
      public function ___CityWheelRewardItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.mouseOverHandler(param1);
         }
      }
      
      public function ___CityWheelRewardItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.mouseOutHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1332194002background;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr004a:
                  this._1332194002background = param1;
                  if(!_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0055);
            }
            addr0074:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._3226745icon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr005e);
      }
   }
}

