package  com.evpoly.polyweb.mobile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class nowparking {
   @Autowired JdbcTemplate db;
    
   @GetMapping(value = "/nowparking")
   @ResponseBody // public @ResponseBody String testByResponseBody()와 같이 리턴 타입 좌측에 지정 가능
   public List<Object> testByResponseBody() {
      return db.query("select * from ev_car_info where car_set_tm is NULL",(rs,rowNum)->{
         Map<String, Object> parking = new HashMap<>();
         parking.put("건물",rs.getInt(2));
         parking.put("차량번호",rs.getString(6));
         parking.put("구역",rs.getInt(3));
         parking.put("전기차 여부",rs.getString(7));
         parking.put("입차시간",rs.getString(9));
         parking.put("차량사진",rs.getString(11));
      
         return parking;
      });
   }
}