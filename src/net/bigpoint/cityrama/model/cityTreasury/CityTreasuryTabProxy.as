package net.bigpoint.cityrama.model.cityTreasury
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityTreasuryTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CityTreasuryTabProxy";
      
      public static const CURRENCY_TAB_INDEX:int = 0;
      
      public static const GOODS_TAB_INDEX:int = 1;
      
      public static const PACKS_TAB_INDEX:int = 2;
      
      public static const SPECIALS_TAB_INDEX:int = 3;
      
      private static const CURRENCY_STYLE:String = "currency";
      
      private static const GOODS_STYLE:String = "goods";
      
      private static const PACKS_STYLE:String = "packs";
      
      private static const SPECIALS_STYLE:String = "special";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "CityTreasuryTabProxy";
         if(_loc2_)
         {
            CURRENCY_TAB_INDEX = 0;
            if(!_loc1_)
            {
               GOODS_TAB_INDEX = 1;
               if(_loc2_)
               {
                  PACKS_TAB_INDEX = 2;
                  if(!(_loc1_ && CityTreasuryTabProxy))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0078);
               }
            }
            §§goto(addr0098);
         }
         addr0063:
         SPECIALS_TAB_INDEX = 3;
         if(_loc2_ || CityTreasuryTabProxy)
         {
            addr0078:
            CURRENCY_STYLE = "currency";
            if(!(_loc1_ && _loc2_))
            {
               addr0098:
               GOODS_STYLE = "goods";
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr00ae);
               }
               §§goto(addr00bc);
            }
            addr00ae:
            PACKS_STYLE = "packs";
            if(_loc2_)
            {
               addr00bc:
               SPECIALS_STYLE = "special";
            }
            §§goto(addr00c5);
         }
         addr00c5:
         return;
      }
      §§goto(addr00ae);
      
      private var _tabs:ArrayCollection;
      
      private var _currentTabIndex:int = -1;
      
      public function CityTreasuryTabProxy(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super(NAME,param1);
         }
      }
      
      private function createTabs() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:CityTreasuryProxy = null;
         var _loc2_:* = null;
         if(_loc4_ || Boolean(_loc1_))
         {
            this._tabs = new ArrayCollection();
            if(_loc4_ || Boolean(this))
            {
               if(facade.hasProxy(CityTreasuryProxy.NAME))
               {
                  addr0051:
                  _loc1_ = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
               }
               var _loc3_:TabsVo = new TabsVo();
               if(!_loc5_)
               {
                  _loc3_.styleName = CURRENCY_STYLE;
                  if(_loc4_)
                  {
                     _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.treasurynew","rcl.booklayer.treasurynew.tabs.currency.capital");
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        _loc3_.enabled = true;
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           _loc3_.hasNews = false;
                           if(_loc4_)
                           {
                              if(_loc1_)
                              {
                                 if(_loc4_ || Boolean(_loc1_))
                                 {
                                    addr00cf:
                                    §§push(_loc1_.getIcon(CityTreasuryTabProxy.CURRENCY_TAB_INDEX));
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop());
                                       if(_loc4_)
                                       {
                                          addr00ef:
                                          _loc2_ = §§pop();
                                          if(!_loc5_)
                                          {
                                             addr00f7:
                                             if(_loc2_ != null)
                                             {
                                                if(!(_loc5_ && Boolean(_loc3_)))
                                                {
                                                   addr010a:
                                                   _loc3_.icon = _loc2_ + "_small";
                                                   if(_loc4_)
                                                   {
                                                      addr0119:
                                                      this._tabs.addItem(_loc3_);
                                                   }
                                                   addr0122:
                                                   _loc3_ = new TabsVo();
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      _loc3_.styleName = GOODS_STYLE;
                                                      if(!_loc5_)
                                                      {
                                                         _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.treasurynew","rcl.booklayer.treasurynew.tabs.goodrebuy.capital");
                                                         if(!(_loc5_ && Boolean(_loc1_)))
                                                         {
                                                            addr0165:
                                                            _loc3_.enabled = true;
                                                            if(!_loc5_)
                                                            {
                                                               _loc3_.hasNews = false;
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     if(!(_loc5_ && Boolean(_loc1_)))
                                                                     {
                                                                        §§push(_loc1_.getIcon(CityTreasuryTabProxy.GOODS_TAB_INDEX));
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr01c4:
                                                                                 addr01c3:
                                                                                 if(_loc2_ != null)
                                                                                 {
                                                                                    if(_loc4_ || Boolean(this))
                                                                                    {
                                                                                       addr01d7:
                                                                                       _loc3_.icon = _loc2_ + "_small";
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01e6:
                                                                                          this._tabs.addItem(_loc3_);
                                                                                       }
                                                                                       addr01ef:
                                                                                       _loc3_ = new TabsVo();
                                                                                       if(!(_loc5_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          _loc3_.styleName = PACKS_STYLE;
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.treasurynew","rcl.booklayer.treasurynew.tabs.packages.capital");
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                _loc3_.enabled = true;
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   _loc3_.hasNews = false;
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr024b:
                                                                                                            §§push(_loc1_.getIcon(CityTreasuryTabProxy.PACKS_TAB_INDEX));
                                                                                                            if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc4_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  if(_loc4_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     addr0283:
                                                                                                                     addr0282:
                                                                                                                     if(_loc2_ != null)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr028e:
                                                                                                                           _loc3_.icon = _loc2_ + "_small";
                                                                                                                           if(!(_loc5_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr02a5:
                                                                                                                              this._tabs.addItem(_loc3_);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc3_ = new TabsVo();
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           _loc3_.styleName = SPECIALS_STYLE;
                                                                                                                           if(_loc4_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.treasurynew","rcl.booklayer.treasurynew.tabs.special.capital");
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 _loc3_.enabled = true;
                                                                                                                                 if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    _loc3_.hasNews = false;
                                                                                                                                    if(_loc4_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                                          {
                                                                                                                                             addr0322:
                                                                                                                                             §§push(_loc1_.getIcon(CityTreasuryTabProxy.SPECIALS_TAB_INDEX));
                                                                                                                                             if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr0356:
                                                                                                                                                      if(_loc2_ != null)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr0361:
                                                                                                                                                            _loc3_.icon = _loc2_ + "_small";
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr0370:
                                                                                                                                                               this._tabs.addItem(_loc3_);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0379);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0370);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr0356);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0361);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0370);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0379);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0361);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr0379:
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr0322);
                                                                                                                     }
                                                                                                                     §§goto(addr02a5);
                                                                                                                  }
                                                                                                                  §§goto(addr028e);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0283);
                                                                                                         }
                                                                                                         §§goto(addr0282);
                                                                                                      }
                                                                                                      §§goto(addr02a5);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr028e);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr024b);
                                                                                       }
                                                                                       §§goto(addr028e);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01e6);
                                                                              }
                                                                              §§goto(addr01d7);
                                                                           }
                                                                        }
                                                                        §§goto(addr01c4);
                                                                     }
                                                                     §§goto(addr01c3);
                                                                  }
                                                                  §§goto(addr01e6);
                                                               }
                                                               §§goto(addr01ef);
                                                            }
                                                            §§goto(addr01c3);
                                                         }
                                                         §§goto(addr01d7);
                                                      }
                                                      §§goto(addr0165);
                                                   }
                                                   §§goto(addr01d7);
                                                }
                                             }
                                          }
                                          §§goto(addr0119);
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr00ef);
                                 }
                                 §§goto(addr010a);
                              }
                              §§goto(addr0119);
                           }
                           §§goto(addr00cf);
                        }
                     }
                  }
                  §§goto(addr0122);
               }
               §§goto(addr010a);
            }
         }
         §§goto(addr0051);
      }
      
      public function cleanTabs() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._tabs = null;
         }
      }
      
      public function get tabs() : ArrayCollection
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(this._tabs == null)
            {
               if(_loc1_ || Boolean(this))
               {
                  addr003d:
                  this.createTabs();
               }
            }
            return this._tabs;
         }
         §§goto(addr003d);
      }
      
      public function get currentTabIndex() : int
      {
         return this._currentTabIndex;
      }
      
      public function set currentTabIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._currentTabIndex = param1;
         }
      }
   }
}

