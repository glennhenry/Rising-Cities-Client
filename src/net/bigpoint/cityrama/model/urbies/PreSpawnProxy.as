package net.bigpoint.cityrama.model.urbies
{
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeConfigVo;
   import net.bigpoint.util.DebugLayer;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PreSpawnProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PreSpawnProxy";
      
      public function PreSpawnProxy(param1:Object = null)
      {
         super(NAME,new Vector.<UrbieLifeConfigVo>());
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
         DebugLayer.instance.track("{\"header\":\"" + NAME + "addUrbie" + "\",\"message\":" + param1 + "}",3);
         this.que.push(param1);
      }
      
      public function nextUrbie() : UrbieLifeConfigVo
      {
         return this.que.shift();
      }
   }
}

