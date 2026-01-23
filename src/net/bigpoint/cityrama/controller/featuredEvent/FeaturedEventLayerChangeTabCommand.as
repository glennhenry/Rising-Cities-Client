package net.bigpoint.cityrama.controller.featuredEvent
{
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedLayerTabProxy;
   import net.bigpoint.cityrama.view.cityWheel.FeaturedEventCityWheelMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import net.bigpoint.cityrama.view.mysteryBuilding.FeaturedEventMysteryMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FeaturedEventLayerChangeTabCommand extends SimpleCommand
   {
      
      public function FeaturedEventLayerChangeTabCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:FeaturedLayerTabProxy = facade.retrieveProxy(FeaturedLayerTabProxy.NAME) as FeaturedLayerTabProxy;
         var _loc3_:FeaturedEventCityWheelMediator = facade.retrieveMediator(FeaturedEventCityWheelMediator.NAME) as FeaturedEventCityWheelMediator;
         var _loc4_:FeaturedEventMysteryMediator = facade.retrieveMediator(FeaturedEventMysteryMediator.NAME) as FeaturedEventMysteryMediator;
         var _loc5_:FeaturedEventLayer = param1.getBody() as FeaturedEventLayer;
         if(_loc5_)
         {
            §§push(_loc2_.selectedIndex);
            if(_loc7_ || Boolean(param1))
            {
               var _loc6_:* = §§pop();
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  §§push(FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX);
                  if(!(_loc8_ && Boolean(this)))
                  {
                     §§push(_loc6_);
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              §§push(0);
                              if(_loc8_)
                              {
                              }
                           }
                           else
                           {
                              addr01ad:
                              §§push(1);
                              if(_loc7_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(FeaturedLayerTabProxy.MYSTERY_TAB_INDEX);
                           if(_loc7_)
                           {
                              addr01a9:
                              addr01a7:
                              if(§§pop() === _loc6_)
                              {
                                 §§goto(addr01ad);
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        §§goto(addr01c7);
                     }
                     §§goto(addr01a9);
                  }
                  §§goto(addr01a7);
               }
               §§goto(addr01ad);
            }
            addr01c7:
            switch(§§pop())
            {
               case 0:
                  if(!_loc3_)
                  {
                     if(!_loc8_)
                     {
                        _loc3_ = new FeaturedEventCityWheelMediator(_loc5_);
                        if(_loc7_)
                        {
                           facade.registerMediator(_loc3_);
                        }
                        addr0089:
                        if(_loc4_)
                        {
                           if(_loc8_)
                           {
                              addr00c2:
                              _loc4_ = new FeaturedEventMysteryMediator(_loc5_);
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 facade.registerMediator(_loc4_);
                              }
                              addr00f1:
                              if(_loc3_)
                              {
                                 if(_loc8_ && Boolean(this))
                                 {
                                    break;
                                 }
                                 facade.removeMediator(FeaturedEventCityWheelMediator.NAME);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              addr0115:
                              _loc4_.init();
                              if(_loc7_)
                              {
                              }
                              break;
                           }
                           facade.removeMediator(FeaturedEventMysteryMediator.NAME);
                           if(!_loc7_)
                           {
                              break;
                           }
                        }
                        _loc3_.init();
                        if(_loc7_)
                        {
                        }
                        break;
                     }
                     §§goto(addr0115);
                  }
                  §§goto(addr0089);
               case 1:
                  if(!_loc4_)
                  {
                     if(!_loc8_)
                     {
                        §§goto(addr00c2);
                     }
                     §§goto(addr0115);
                  }
                  §§goto(addr00f1);
            }
            §§goto(addr01d5);
         }
         addr01d5:
      }
   }
}

