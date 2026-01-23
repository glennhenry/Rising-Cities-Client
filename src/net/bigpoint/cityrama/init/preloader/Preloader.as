package net.bigpoint.cityrama.init.preloader
{
   import net.bigpoint.util.StatInfoLayer;
   
   public class Preloader extends PreloaderContainer
   {
      
      public function Preloader()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override protected function onFrameSuspension() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(!preloaderDisplay)
            {
               if(!_loc2_)
               {
                  addr002a:
                  this.createChildren();
                  if(_loc1_ || _loc1_)
                  {
                     addr003c:
                     setInitProgress(75,100);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0054:
                        this.initiaizeFramework();
                     }
                     §§goto(addr0059);
                  }
                  §§goto(addr0054);
               }
               addr0059:
               return;
            }
            §§goto(addr003c);
         }
         §§goto(addr002a);
      }
      
      protected function initiaizeFramework() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            StatInfoLayer.instance.executeStep(StatInfoLayer.STEN_GAMECLIENTLOADS);
            if(!(_loc2_ && Boolean(this)))
            {
               addr0032:
               _customSystemManager.resumeNextFrame();
            }
            return;
         }
         §§goto(addr0032);
      }
      
      override protected function createChildren() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(!preloaderDisplay)
            {
               if(_loc1_ || _loc1_)
               {
                  preloaderDisplay = new PreloaderView();
                  if(_loc1_)
                  {
                     preloaderDisplay.x = 0;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr005f:
                        preloaderDisplay.y = 0;
                        if(!_loc2_)
                        {
                           addr006a:
                           addChild(preloaderDisplay);
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr006a);
            }
            addr0071:
            return;
         }
         §§goto(addr005f);
      }
   }
}

