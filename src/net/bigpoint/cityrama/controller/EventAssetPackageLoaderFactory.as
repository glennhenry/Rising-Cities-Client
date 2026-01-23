package net.bigpoint.cityrama.controller
{
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   
   public class EventAssetPackageLoaderFactory
   {
      
      private static var listOfEventSwfPackageIds:Array;
      
      public static const SWF_LOADER_EVENT_PREFIX:String = "EventPack_";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && EventAssetPackageLoaderFactory))
      {
         listOfEventSwfPackageIds = [80000,80001,80002,80003,80004,80005,80006,80007,80008,80009,80010,80011,80012,80013,80014,80015,80016,80017,80018,80019,80020,80021];
         if(!(_loc2_ && EventAssetPackageLoaderFactory))
         {
            SWF_LOADER_EVENT_PREFIX = "EventPack_";
         }
      }
      
      public function EventAssetPackageLoaderFactory()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public static function getLoaderXML(param1:String, param2:CvTagProxy) : String
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:int = 0;
         var _loc3_:String = "";
         for each(_loc4_ in listOfEventSwfPackageIds)
         {
            if(!_loc8_)
            {
               continue;
            }
            §§push(_loc3_);
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               §§push("<SWFLoader noCache=\"false\" name=\"");
               if(!(_loc7_ && EventAssetPackageLoaderFactory))
               {
                  §§push(SWF_LOADER_EVENT_PREFIX);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        addr0074:
                        §§push(§§pop() + _loc4_);
                        if(!_loc7_)
                        {
                           §§push("\" url=\"");
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc7_ && EventAssetPackageLoaderFactory))
                              {
                                 §§push(param1);
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc7_ && Boolean(param2)))
                                    {
                                       §§push(param2);
                                       §§push("swf/events/");
                                       if(_loc8_ || Boolean(_loc3_))
                                       {
                                          addr00fb:
                                          addr010e:
                                          addr0110:
                                          §§push(§§pop() + _loc4_);
                                          if(_loc8_)
                                          {
                                             addr00f2:
                                             §§push(§§pop() + ".swf");
                                          }
                                          §§push(§§pop() + §§pop().getCvTagPath(§§pop()));
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             addr010a:
                                             addr010d:
                                             §§push(§§pop() + "\" />");
                                          }
                                          _loc3_ = §§pop() + §§pop();
                                          continue;
                                       }
                                       §§goto(addr00f2);
                                    }
                                    §§goto(addr010a);
                                 }
                                 §§goto(addr00fb);
                              }
                              §§goto(addr010a);
                           }
                           §§goto(addr010d);
                        }
                        §§goto(addr010e);
                     }
                     §§goto(addr010a);
                  }
                  §§goto(addr00fb);
               }
               §§goto(addr0074);
            }
            §§goto(addr0110);
         }
         return _loc3_;
      }
   }
}

