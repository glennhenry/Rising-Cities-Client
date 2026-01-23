package net.bigpoint.cityrama.model.urbies
{
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeConfigVo;
   import net.bigpoint.util.DebugLayer;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PreSpawnProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PreSpawnProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "PreSpawnProxy";
      }
      
      public function PreSpawnProxy(param1:Object = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super(NAME,new Vector.<UrbieLifeConfigVo>());
         }
      }
      
      private function get que() : Vector.<UrbieLifeConfigVo>
      {
         return super.data as Vector.<UrbieLifeConfigVo>;
      }
      
      public function get queLength() : int
      {
         return this.que.length;
      }
      
      public function addUrbie(param1:UrbieLifeConfigVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(DebugLayer.instance);
            §§push("{\"header\":\"");
            if(_loc2_)
            {
               §§push(§§pop() + NAME);
               if(!_loc3_)
               {
                  §§push("addUrbie");
                  if(!_loc3_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0059:
                        §§push("\",\"message\":");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              §§goto(addr0073);
                           }
                           §§goto(addr007a);
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0059);
            }
            addr0073:
            §§push(§§pop() + param1);
            if(_loc2_)
            {
               addr007a:
               addr007d:
               §§push(§§pop() + "}");
            }
            §§pop().track(§§pop(),3);
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0091:
               this.que.push(param1);
            }
            return;
         }
         §§goto(addr0091);
      }
      
      public function nextUrbie() : UrbieLifeConfigVo
      {
         return this.que.shift();
      }
   }
}

