package net.bigpoint.cityrama.model.featuredEvent
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FeaturedLayerTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FeaturedLayerTabProxy";
      
      public static const CITYWHEEL_TAB_INDEX:int = 0;
      
      public static const MYSTERY_TAB_INDEX:int = 1;
      
      private static const CITYWHEEL_STYLE:String = "cityWheel";
      
      private static const MYSTERY_STYLE:String = "mysteryBuilding";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "FeaturedLayerTabProxy";
         if(!(_loc2_ && _loc2_))
         {
            addr0033:
            CITYWHEEL_TAB_INDEX = 0;
            if(!(_loc2_ && _loc1_))
            {
               MYSTERY_TAB_INDEX = 1;
               if(_loc1_ || _loc1_)
               {
                  CITYWHEEL_STYLE = "cityWheel";
                  if(!_loc2_)
                  {
                     addr0075:
                     MYSTERY_STYLE = "mysteryBuilding";
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr0075);
         }
         addr007e:
         return;
      }
      §§goto(addr0033);
      
      private var _tabs:ArrayCollection;
      
      private var _selectedIndex:int = -1;
      
      private var _fEP:FeaturedEventProxy;
      
      public function FeaturedLayerTabProxy(param1:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(NAME,param1);
            if(!_loc4_)
            {
               this._tabs = new ArrayCollection();
            }
         }
         var _loc2_:TabsVo = new TabsVo();
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.styleName = CITYWHEEL_STYLE;
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.tabName.capital");
               if(_loc3_)
               {
                  _loc2_.enabled = true;
                  addr006f:
                  if(_loc3_ || Boolean(param1))
                  {
                     addr008e:
                     _loc2_.hasNews = false;
                     if(_loc3_ || _loc3_)
                     {
                        addr00a0:
                        this._tabs.addItem(_loc2_);
                     }
                  }
                  _loc2_ = new TabsVo();
                  if(!_loc4_)
                  {
                     _loc2_.styleName = MYSTERY_STYLE;
                     if(_loc3_)
                     {
                        _loc2_.tabLabel = LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.header.mystery.capital");
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc2_.enabled = true;
                           if(_loc3_)
                           {
                              addr00f9:
                              _loc2_.hasNews = false;
                              if(_loc3_)
                              {
                                 addr0103:
                                 this._tabs.addItem(_loc2_);
                              }
                           }
                           return;
                        }
                        §§goto(addr0103);
                     }
                     §§goto(addr00f9);
                  }
                  §§goto(addr0103);
               }
               §§goto(addr00a0);
            }
            §§goto(addr006f);
         }
         §§goto(addr008e);
      }
      
      public function get tabs() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.checkEnable();
         }
         return this._tabs;
      }
      
      private function checkEnable() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:TabsVo = null;
         var _loc1_:String = "rcl.tooltips.featuredeventpopuptabs";
         var _loc3_:int = 0;
         for each(_loc2_ in this._tabs)
         {
            if(_loc6_ && Boolean(_loc3_))
            {
               continue;
            }
            §§push(_loc2_.styleName);
            if(_loc5_)
            {
               §§push(MYSTERY_STYLE);
               if(!_loc6_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(_loc2_);
                        §§push(this.featuredEventProxy.mysteryBuildingRunning);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().isLocked = §§pop();
                        if(!_loc6_)
                        {
                           addr0080:
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              if(this.featuredEventProxy.mysteryBuildingRunning)
                              {
                                 addr0092:
                                 §§push(LocaUtils.getString(_loc1_,_loc1_ + ".mystery"));
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ && Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr00e5:
                                    §§push(§§pop());
                                 }
                              }
                              else
                              {
                                 §§push(LocaUtils.getString(_loc1_,_loc1_ + ".mystery.locked"));
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    §§goto(addr00e5);
                                 }
                              }
                              §§pop().tooltip = §§pop();
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 continue;
                              }
                              addr0113:
                              §§push(_loc2_);
                              §§push(this.featuredEventProxy.cityWheelRunning);
                              if(_loc5_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().isLocked = §§pop();
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              addr012b:
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 if(this.featuredEventProxy.cityWheelRunning)
                                 {
                                    addr013d:
                                    §§push(LocaUtils.getString(_loc1_,_loc1_ + ".wheel"));
                                    if(_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ && Boolean(_loc3_))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(LocaUtils.getString(_loc1_,_loc1_ + ".wheel.locked"));
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 §§pop().tooltip = §§pop();
                                 continue;
                              }
                              §§goto(addr013d);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr012b);
                     }
                     §§goto(addr0080);
                  }
                  else
                  {
                     addr0101:
                     addr00fe:
                     if(_loc2_.styleName != CITYWHEEL_STYLE)
                     {
                        continue;
                     }
                     if(!(_loc5_ || Boolean(this)))
                     {
                        continue;
                     }
                  }
                  §§goto(addr0113);
               }
               §§goto(addr0101);
            }
            §§goto(addr00fe);
         }
      }
      
      public function set tabs(param1:ArrayCollection) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._tabs = param1;
         }
      }
      
      public function get selectedIndex() : int
      {
         return this._selectedIndex;
      }
      
      public function set selectedIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._selectedIndex = param1;
         }
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._fEP);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     this._fEP = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                  }
               }
               addr0053:
               return this._fEP;
            }
         }
         §§goto(addr0053);
      }
   }
}

