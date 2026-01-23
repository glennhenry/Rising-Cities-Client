package net.bigpoint.cityrama.model.ingameStore
{
   import mx.collections.ArrayCollection;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class IngameStoreTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "IngameStoreTabProxy";
      
      public static const ARCHITECT_TAB_INDEX:int = 0;
      
      public static const IMPROVEMENT_TAB_INDEX:int = 1;
      
      public static const BOOSTERPACK_TAB_INDEX:int = 2;
      
      private static const ARCHITECT_STYLE:String = "architectBookStore";
      
      private static const IMPROVEMENT_STYLE:String = "hipStore";
      
      private static const BOOSTER_STYLE:String = "boosterPackStore";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "IngameStoreTabProxy";
         if(_loc2_ || _loc1_)
         {
            ARCHITECT_TAB_INDEX = 0;
            if(!_loc1_)
            {
               addr0041:
               IMPROVEMENT_TAB_INDEX = 1;
               if(!_loc1_)
               {
                  BOOSTERPACK_TAB_INDEX = 2;
                  if(_loc2_ || IngameStoreTabProxy)
                  {
                     addr006d:
                     ARCHITECT_STYLE = "architectBookStore";
                     if(!(_loc1_ && _loc1_))
                     {
                        IMPROVEMENT_STYLE = "hipStore";
                        if(_loc2_ || _loc1_)
                        {
                           addr0099:
                           BOOSTER_STYLE = "boosterPackStore";
                        }
                     }
                  }
                  return;
               }
               §§goto(addr0099);
            }
            §§goto(addr006d);
         }
         §§goto(addr0041);
      }
      §§goto(addr006d);
      
      private var _tabs:ArrayCollection;
      
      private var _currentIndex:int = -1;
      
      private var _lastViewedIndex:int = 0;
      
      public function IngameStoreTabProxy(param1:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(NAME,param1);
            if(_loc3_)
            {
               addr0026:
               this._tabs = new ArrayCollection();
            }
            var _loc2_:TabsVo = new TabsVo();
            if(_loc3_)
            {
               _loc2_.styleName = ARCHITECT_STYLE;
               if(_loc3_ || Boolean(param1))
               {
                  _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.architect"),String("rcl.booklayer.architect.title"));
                  if(_loc3_ || Boolean(param1))
                  {
                     _loc2_.enabled = true;
                     if(_loc3_ || _loc3_)
                     {
                        addr0090:
                        _loc2_.hasNews = false;
                        if(_loc3_ || _loc3_)
                        {
                           addr00a2:
                           this._tabs.addItem(_loc2_);
                        }
                     }
                     _loc2_ = new TabsVo();
                     addr00ab:
                     if(_loc3_)
                     {
                        _loc2_.styleName = IMPROVEMENT_STYLE;
                        if(_loc3_)
                        {
                           _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.hipStore"),String("rcl.booklayer.hipStore.tabName.capital"));
                           if(!_loc4_)
                           {
                              addr00f6:
                              _loc2_.enabled = true;
                              if(_loc3_)
                              {
                                 addr0100:
                                 _loc2_.hasNews = false;
                                 if(!_loc4_)
                                 {
                                    addr010b:
                                    this._tabs.addItem(_loc2_);
                                 }
                                 _loc2_ = new TabsVo();
                                 if(_loc3_)
                                 {
                                    _loc2_.styleName = BOOSTER_STYLE;
                                    if(!_loc4_)
                                    {
                                       _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.boosterpackStore"),String("rcl.booklayer.boosterpackStore.title.capital"));
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          _loc2_.enabled = true;
                                          addr015d:
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             §§goto(addr017b);
                                          }
                                          §§goto(addr018d);
                                       }
                                       addr017b:
                                       _loc2_.hasNews = false;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr018d:
                                          this._tabs.addItem(_loc2_);
                                       }
                                       return;
                                    }
                                    §§goto(addr018d);
                                 }
                                 §§goto(addr015d);
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr0100);
                        }
                        §§goto(addr010b);
                     }
                     §§goto(addr00f6);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00ab);
            }
            §§goto(addr0090);
         }
         §§goto(addr0026);
      }
      
      public function get tabs() : ArrayCollection
      {
         return this._tabs;
      }
      
      public function get currentIndex() : int
      {
         return this._currentIndex;
      }
      
      public function set currentIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._currentIndex = param1;
         }
      }
      
      public function get lastViewedIndex() : int
      {
         return this._lastViewedIndex;
      }
      
      public function set lastViewedIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._lastViewedIndex = param1;
         }
      }
   }
}

