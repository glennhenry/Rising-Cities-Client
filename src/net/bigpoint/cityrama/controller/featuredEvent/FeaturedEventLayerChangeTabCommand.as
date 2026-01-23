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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:FeaturedLayerTabProxy = facade.retrieveProxy(FeaturedLayerTabProxy.NAME) as FeaturedLayerTabProxy;
         var _loc3_:FeaturedEventCityWheelMediator = facade.retrieveMediator(FeaturedEventCityWheelMediator.NAME) as FeaturedEventCityWheelMediator;
         var _loc4_:FeaturedEventMysteryMediator = facade.retrieveMediator(FeaturedEventMysteryMediator.NAME) as FeaturedEventMysteryMediator;
         var _loc5_:FeaturedEventLayer = param1.getBody() as FeaturedEventLayer;
         if(_loc5_)
         {
            switch(_loc2_.selectedIndex)
            {
               case FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX:
                  if(!_loc3_)
                  {
                     _loc3_ = new FeaturedEventCityWheelMediator(_loc5_);
                     facade.registerMediator(_loc3_);
                  }
                  if(_loc4_)
                  {
                     facade.removeMediator(FeaturedEventMysteryMediator.NAME);
                  }
                  _loc3_.init();
                  break;
               case FeaturedLayerTabProxy.MYSTERY_TAB_INDEX:
                  if(!_loc4_)
                  {
                     _loc4_ = new FeaturedEventMysteryMediator(_loc5_);
                     facade.registerMediator(_loc4_);
                  }
                  if(_loc3_)
                  {
                     facade.removeMediator(FeaturedEventCityWheelMediator.NAME);
                  }
                  _loc4_.init();
            }
         }
      }
   }
}

